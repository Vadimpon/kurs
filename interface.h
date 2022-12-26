#pragma once
#include <string>
#include <map>
using namespace std;
/**
@brief Класс для получения параметров коммандной строки
*/
class Opts
{
private:
    string Database = "Db.txt"; ///< Путь к файлу с базой данных
    string Logfile = "Log.txt"; ///< Путь к файлу для записи логов
    int Port = 33333; ///< Порт, на котором работает сервер
    void help(const char* prog); ///<вывод подсказки и останов
public:
/** 
 @brief Конструктор, внутри которого считываются параметры командной строки
 @details Параметры  командной строки:
	1)-b Путь к файлу с базой данных, необязательный
	2)-l Путь к файлу для записи логов, необязательный
	3)-p Порт, на котором работает сервер, необязательный
	4)-h вызов подсказки
	При ошибках в параметрах вызывается справка и программа завершает работу
 @param [in] int argc
 @param [in] char **argv
*/
    Opts(int argc, char **argv);
/** 
 @brief Проверка роботоспособности файлов базы данных и лога
 @return bool, если нет ошибок в фалах - true, иначе false
 @throw std::invalid_argument в случае проблем с файлами, критическая 
 @code 
 type = invalid_argument, what ="Wrong DB File Name" или what ="Wrong Log File Name"
 @endcode
*/
	bool Checkfiles();
    string getDatabase() ///<Возвращает путь к файлу с базой данных 
    {
        return Database;
    }
    string getLogfile() ///<Возвращает путь к файлу для записи логов
    {
        return Logfile;
    }
    int getPort() ///<Порт, на котором работает сервер
    {
        return Port;
    }
};