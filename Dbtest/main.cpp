#include <UnitTest++/UnitTest++.h>
#include "DataBase.h"
#include <iostream>
#include <string>

using namespace std;


SUITE(costructorTest)
{
	TEST(Default) {
		CHECK_EQUAL(true, Db("Db.txt").IDcheck("user"));
	}
	TEST(wrongDB) {
		CHECK_THROW(Db("noDb.txt"),server_error);
	}
}

SUITE(methodTest)
{
	TEST(rightID) {
		CHECK_EQUAL(true, Db("Db.txt").IDcheck("Vadim"));
	}
	TEST(wrongID) {
		CHECK_THROW(Db("Db.txt").IDcheck("player228"),server_error);
	}
}


int main()
{
	return UnitTest::RunAllTests();
}
