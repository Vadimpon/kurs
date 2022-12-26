#include "interface.h"
#include "Auth.h"
#include "Calc.h"
#include "DataBase.h"
#include <iostream>
#include "Connect.h"
#include "Application.h"
#include <vector>
#include <string>
#include <map>
#include "Error.h"
Error Err;
/** 
 @brief Функция main
 @details Инициализация сервера в случае появления критической ошибки завершает работу
*/
int main(int argc, char **argv)
{
	try{
    Opts op(argc, argv);
    Err.setLogname(op.getLogfile());
    op.Checkfiles();
    Db new_db(op.getDatabase());
    Connect main_manager(op.getPort());
    main_manager.new_bind();
    std::cout<<"Work!!!"<<std::endl;
    main_manager.start_listening();
    while (true) {
        int sock = main_manager.accepting();
        std::cout<<"got_it"<<std::endl;
        Application(op.getPort(), op.getLogfile(), new_db, sock);
    	}
	} catch (const server_error & e) {
		Err.write_log(e.what(), e.getState());
        if (e.getState()){
			exit(1);
		}
    }
    return 0;
}