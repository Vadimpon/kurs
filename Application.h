/*  @file Application.h
 *  @author Пономарев В.А.
 *  @version 1.0
 *  @date 26.12.2022
 *  @copyright ИБСТ ПГУ
 */

#include "interface.h"
#include "Auth.h"
#include "Calc.h"
#include "DataBase.h"
#include <iostream>
#include "Connect.h"
#include "Error.h"
#include <vector>
#include <string>
#include <map>
using namespace std;
/** 
 @brief Функция взаимодействия сервера с клиентом
 @details Алгоритм взаимодействия с клиентом:
	1. клиент устанавливает соединение
	2. клиент передает свой идентификатор ID
	3а. сервер передает случайное число SALT16 (при успешной идентификации)
	3б. сервер передает строку "ERR" и разрывает соединение(при ошибке
	идентификации)
	4. клиент передает HASHMD5( SALT16 || PASSWORD)
	5а. сервер передает OK при успешной аутентификации
	5б. сервер передает строку "ERR" и разрывает соединение(при ошибке
	аутентификации)
	начиная с шага 6 обмен в двоичном формате
	6. клиент посылает количество векторов ;
	7. клиент посылает размер первого вектора;
	8. клиент посылает все значения первого вектора одним блоком данных;
	9. сервер возвращает результат вычислений по первому вектору;
	10. шаги 7-9 повторяются для всех векторов
	11. клиент завершает соединение
 @param [in] port, порт, unsigned int
 @param [in] Logname, путь к файлу для записи логов, std::string
 @param [in] new_db, база данных пользователей, Db
 @param [in] sock, сокет, int
 @throw std::server_error в случае ошибки, критическая
 @code 
 type = invalid_argument, what ="Error: Count "
 @endcode
*/
void Application(unsigned int port, std::string Logname, Db new_db, int sock)
{
	try{
	Connect new_manager(port);
    char buf[4096];
    int bytes_read;
    bytes_read = new_manager.receiving(sock, &buf, 4096);
     std::cout<<string(buf, bytes_read)<<std::endl;
    new_db.IDcheck(string(buf, bytes_read));
        Auth new_auth(string(buf, bytes_read), new_db.DatabaseP[string(buf, bytes_read)]);
        new_auth.GenSALT();
        string str_salt = new_auth.getSALT();
        char salt_buf[16];
        strcpy(salt_buf, str_salt.c_str());
        new_manager.sending(sock, salt_buf, sizeof(salt_buf));
        bytes_read = new_manager.receiving(sock, &buf, 4096);
        string pass = string(buf, bytes_read);
        new_auth.CompareHashes(pass);
            new_manager.sending(sock, new_auth.OKmsg, sizeof(new_auth.OKmsg));
            uint32_t num_vectors;
            uint32_t vector_len;
            bytes_read = new_manager.receiving(sock, &num_vectors, sizeof num_vectors);
            for(unsigned int i =0; i<num_vectors; i++) {
                bytes_read = new_manager.receiving(sock, &vector_len, sizeof vector_len);
                int16_t int_buf[vector_len];
                bytes_read = new_manager.receiving(sock, &int_buf, vector_len*sizeof(int16_t));
                std::vector<int16_t> arr;
                for(unsigned int i =0; i< vector_len; i++) {
                    arr.push_back(int_buf[i]);
                }
                new_manager.sending(sock, Calc().mean(arr), sizeof(int16_t));
            }               
            close(sock);
            std::cout<<"done\n";
            return;
    } catch (const server_error & e) {
		Error new_ErrTr;
		new_ErrTr.setLogname(Logname);
		new_ErrTr.write_log(e.what(), e.getState());
		if (e.getState()){
			exit(1);
		}
		Connect ERR_send_manager(port);
        ERR_send_manager.sending(sock, Auth("NO","NO").ERRmsg, sizeof(Auth("NO","NO").ERRmsg));
        close(sock);
        return;
    }
}
