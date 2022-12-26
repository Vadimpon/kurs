#include <iostream>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <unistd.h>
#include <vector>
#include "Connect.h"
#include "Error.h"
using namespace std;
Connect::Connect(unsigned int port){
    listener = socket(AF_INET, SOCK_STREAM, 0);
	if (listener<0){
		throw server_error(std::string("Error: Socket creation "), true);}
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = inet_addr(Adress);
}
int Connect::new_bind(){
int rc = bind(listener, (struct sockaddr *)&addr, sizeof(addr));
	if (rc<0){
		throw server_error(std::string("Error: Socket bind "), true);}
	return rc;
}
void Connect::start_listening(){
int rc = listen(listener, 1);
	if (rc<0){
		throw server_error(std::string("Error: Listening "), true);}
}
int Connect::accepting(){
    sockaddr_in * client_addr = new sockaddr_in;
    socklen_t len = sizeof (sockaddr_in);
	int rc = accept(listener,  (sockaddr*)(client_addr), &len);
	if (rc<0){
		throw server_error(std::string("Error: Accepting "), false);}
    return rc;
}
int Connect::receiving(int sock, void*buf, int size){
	int rc = recv(sock, buf, size, 0);
	if (rc<0){
		throw server_error(std::string("Error: Receiving "), false);}
    return rc;
}
void Connect::sending(int sock, void*buf, int sizeb){
	int rc = send(sock, buf, sizeb, 0);
	if (rc<0){
		throw server_error(std::string("Error: Sending "));}
}