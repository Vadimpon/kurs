#pragma once
#include <map>
#include <string>
#include <fstream>
#include <exception>
#include <typeinfo>
#include <iostream>
#include <boost/algorithm/string.hpp>
#include "Error.h"
/**
@brief Класс для работы с базой данных пользователей
*/
class Db
{
private:
    char sep = ' '; ///<Разделитель идентификатора и пароля в базе данных
public:
	std::map <std::string,std::string> DatabaseP; ///<Словарь с парами идентификатор:пароль
/** 
 @brief Конструктор, в котором считывается база данных и сохраняется в словарь
 @param [in] Dbname, путь к файлу с базой данных, std::string.
 @throw std::server_error в случае проблем с файлом базы данных, критическая
*/
    Db(std::string Dbname);
/** 
 @brief Проверка наличия идентификатора клиента в базе данных
 @param [in] login, идентификатора клиента, std::string
 @return bool, если идентификатор есть в базе - true, иначе false
 @throw std::server_error в случае отсутствия идентификатора в базе, штатная
 @code 
 type = invalid_argument, what ="Invalid ID"
 @endcode
*/
    bool IDcheck(std::string login);
};