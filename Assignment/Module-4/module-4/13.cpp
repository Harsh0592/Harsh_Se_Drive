/*Write a program to find the max number from given two numbers
usingfriend function*/

#include <iostream>

class FindMax {
private:
    int num1;
    int num2;

public:
    FindMax(int a, int b) : num1(a), num2(b) {}
    friend int findMax(const FindMax &obj);
    void displayNumbers() {
        std::cout << "Numbers are: num1 = " << num1 << ", num2 = " << num2 << std::endl;
    }
};
int findMax(const FindMax &obj) {
    return (obj.num1 > obj.num2) ? obj.num1 : obj.num2;
}

int main() {
    FindMax numbers(5, 10);
    numbers.displayNumbers();
    int maxNum = findMax(numbers);
    std::cout << "The maximum number is: " << maxNum << std::endl;

    return 0;
}

