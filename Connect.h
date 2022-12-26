#pragma once

#include <iostream>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <unistd.h>
#include <vector>
/**
@brief Класс, обеспечивающий работу с сокетами и сетовое взаимодействие
*/
class Connect
{
private:
    unsigned int Port; ///< Порт, на котором работает сервер
    const char* Adress = "127.0.0.1"; ///<Сетевой адрес сервера
    struct sockaddr_in addr; ///<Структура sockaddr_in
    int listener; ///< Основной сокет 
public:
/** 
 @brief Конструктор
 @details Устанавливает порт, инициализирует основной сокет и структуру sockaddr_in
 @param [in] port, порт, на котором работает сервер, int.
 @throw std::server_error в случае ошибки, критическая
 @code 
 type = invalid_argument, what ="Error: Socket creation "
 @endcode
*/
    Connect(unsigned int port);
/** 
 @brief Установка сокета в режим ожидания
 @throw std::server_error в случае ошибки, критическая
 @code 
 type = invalid_argument, what ="Error: Listening "
 @endcode
*/
    void start_listening();
/** 
 @brief Привязка сокета к адресу
 @return код сокета, int
 @throw std::server_error в случае ошибки, критическая
 @code 
 type = invalid_argument, what ="Error: Socket bind "
 @endcode
*/
    int new_bind();
/** 
 @brief Приём соединения
 @return код сокета, int
 @throw std::server_error в случае ошибки, штатная
 @code 
 type = invalid_argument, what ="Error: Accepting "
 @endcode
*/
    int accepting();
/** 
 @brief Приём данных
 @param [in] sock, сокет, int
 @param [in] buf, буфер для данных, void*
 @param [in] size, размер буфера, int
 @return количество полученных байт, int
 @throw std::server_error в случае ошибки, штатная
 @code 
 type = invalid_argument, what ="Error: Receiving "
 @endcode
*/
    int receiving(int sock, void*buf, int size);
/** 
 @brief Отправка данных
 @param [in] sock, сокет, int
 @param [in] buf, буфер с данными, void*
 @param [in] sizeb, количество отправляемых байт, int
 @throw std::server_error в случае ошибки, штатная
 @code 
 type = invalid_argument, what ="Error: Sending "
 @endcode
*/
    void sending(int sock, void*buf, int sizeb);
};