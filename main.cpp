#include <iostream>
#include "calculator.h"

int main()
{
    Calculator calculator;
    std::cout << "5 + 7 = " << calculator.Add(5, 7) << std::endl;
    std::cout << "10 - 3 = " << calculator.Sub(10, 3) << std::endl;
    return 0;
}
