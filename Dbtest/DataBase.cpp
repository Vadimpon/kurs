#include <map>
#include <string>
#include <fstream>
#include <exception>
#include <typeinfo>
#include <iostream>
#include <boost/algorithm/string.hpp>
#include "Error.h"
#include "DataBase.h"

Db::Db(std::string Dbname)
    {
        std::ifstream file(Dbname);
		if(!file.good()){
			throw server_error(std::string("Wrong DB File Name"), true);
		}
        std::string Pair;
        while(getline(file, Pair)) {
            DatabaseP[Pair.substr(0,Pair.find(sep))] = Pair.substr(Pair.find(sep)+1);
        }
        file.close();
    }

bool Db::IDcheck(std::string login)
    {
        for (std::map<std::string, std::string>::iterator it=DatabaseP.begin(); it!=DatabaseP.end(); ++it) {
            std::cout << it->first << " => " << it->second << '\n';
        }
			if (DatabaseP.count(login) != 1){
				throw server_error(std::string("Invalid ID"), false);}
        return DatabaseP.count(login) == 1;
    }
