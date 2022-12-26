#pragma once
#include <vector>
#include <iostream>
#include <exception>
#include "Error.h"
/**
@brief Класс для вычислений по вектору
*/
class Calc
{
private:
int16_t result[1]; ///< Результат вычислений
public:
    Calc(){}; ///<Конструктор без параметров
/** 
 @brief Вычисляет суммы по вектору
 @param [in] arr, вектор, std::vector<int16_t>
 @return указатель на массив с результатом, int16_t *
 @throw std::server_error в случае ошибки, критическая
 @code 
 @type = invalid_argument, what ="Error: Count "
 @details Если идет переполнение вектораю, выводит максимальное возможное если больше, и минимальное возможное если меньше
 @endcode
*/
    int16_t * mean(std::vector<int16_t> arr)
    {
		try{
    	for (std::vector<int16_t>::iterator it = arr.begin() ; it != arr.end(); ++it){
    	std::cout << ' ' << *it;}
  		std::cout << '\n';
        double avg = 0;
        for (uint32_t i = 0; i < arr.size(); i++) {
            avg += arr[i] ;
        }
        if (avg > 32766){
            avg=32766;
             }
            if (avg < -32767){
            avg=-32767;
             } 
        result[0] = avg;
		}catch(std::exception &e){
			throw server_error(std::string("Error: Count "), true);
			}									
        return result;
    }
};