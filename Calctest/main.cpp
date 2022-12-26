#include <UnitTest++/UnitTest++.h>
#include "Calc.h"
#include <iostream>
#include <string>
SUITE(meanTest)
{
	TEST(Default) {
		std::vector<int16_t> arr ={10, 20 ,30 ,40, 50};
		CHECK_EQUAL(150,*( Calc().mean(arr)));
	}
	TEST(Negative) {
		std::vector<int16_t> arr ={-10, -20 ,-30 ,-40, -50};
		CHECK_EQUAL(-150,*( Calc().mean(arr)));
	}
	TEST(MaximumPositive) {
		std::vector<int16_t> arr ={10000, 20000 ,2767};
		CHECK_EQUAL(32766,*( Calc().mean(arr)));
	}
	TEST(MaximumNegative) {
		std::vector<int16_t> arr ={-10000, -20000 ,-2768};
		CHECK_EQUAL(-32767,*( Calc().mean(arr)));
	}
	TEST(Different) {
		std::vector<int16_t> arr ={1000, -2000 ,3000 ,-4000};
		CHECK_EQUAL(-2000,*( Calc().mean(arr)));
	}
	TEST(Owerflow) {
			std::vector<int16_t> arr ={};
		CHECK_THROW(Calc().mean(arr),server_error);
	}
}
int main()
{
	return UnitTest::RunAllTests();
}
