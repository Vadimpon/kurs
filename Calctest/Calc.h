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
 @brief Вычисляет сумму векторов
 @param [in] arr, вектор, std::vector<int16_t>
 @return указатель на массив с результатом, int16_t *
 @throw std::server_error в случае ошибки, Штатная
 @code 
 type = invalid_argument, what ="Error: Count"
 @endcode
*/

    int16_t * mean(std::vector<int16_t> arr)
    {
		try{
			if (arr.empty()){
		throw server_error(std::string("Error: Count "));}
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
			throw server_error(std::string("Error: Count "));
			}									
        return result;
    }
};