#include <iostream>
#include <cstdlib> 
#include <unistd.h> 
#include <string>
#include "interface.h"
#include <fstream>
#include <map>
#include <exception>
#include "Error.h"
using namespace std;
Opts::Opts(int argc, char **argv)
{
    int opt;
    while ((opt = getopt(argc, argv, "b:l:p:h")) != -1) {
        switch (opt) {
        case 'b':
            Database = string(optarg);
            break;
        case 'l':
            Logfile = string(optarg);
            break;
        case 'p':
            Port = strtol(optarg,nullptr,10);
            break;
        case 'h': 
        case '?': 
        case ':': 
            help(argv[0]);
        }
    }
}
void Opts::help(const char* prog)
{
    std::cout<<prog<<" [-b Database] [-n Logfile] [-p Port] \n";
    exit(1);
}
bool Opts::Checkfiles()
{
        std::ifstream file1(Database);
        if (!file1.good()) {
            throw std::invalid_argument(std::string("Wrong Database file name"));
			return false;
        }
        std::ifstream file2(Logfile);
        if (!file2.good()) {
            throw std::invalid_argument(std::string("Wrong Log file name"));
			return false;
		}
    	return true;
}