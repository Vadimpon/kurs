#include "Error.h"
#include <exception>
#include <ctime>
#include <string>
#include <cstring>
#include <fstream>
#include <cstdlib>
#include <limits>
#include <iostream>
void Error::write_log(std::string what, bool Critical)
{
    time_t now = time(0);
    char* dt = ctime(&now);
    tm *gmtm = gmtime(&now);
    dt = asctime(gmtm);
    std::ofstream log(Logfile, std::ios_base::app);
    std::string err_msg = std::string(dt);
	err_msg.pop_back();
    if (Critical){
    err_msg += " "+what + " Критическая\n";}
    else {err_msg += " "+what + " Штатная\n";}
    log.write(err_msg.c_str(),err_msg.size());
    log.close();
}