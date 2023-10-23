/*Write a program to swap the two numbers using friend function
withoutusing third variable*/

#include <iostream>

class SwapNumbers {

public:
	int num1;
	int num2;
    SwapNumbers(int a, int b) : num1(a), num2(b) {}
    friend void swapNumbers(SwapNumbers &obj);
    void displayNumbers() {
        std::cout << "After swapping: num1 = " << num1 << ", num2 = " << num2 << std::endl;
        
    }
};
void swapNumbers(SwapNumbers &obj) {
    obj.num1 = obj.num1 + obj.num2;
    obj.num2 = obj.num1 - obj.num2;
    obj.num1 = obj.num1 - obj.num2;
}

int main() {
    SwapNumbers numbers(5, 10);
    std::cout << "Before swapping: num1 = " << numbers.num1 << ", num2 = " << numbers.num2 << std::endl;
    
	swapNumbers(numbers);
    numbers.displayNumbers();
    return 0;
}

