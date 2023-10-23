//Write a program of to swap the two values using templates

#include <iostream>

template <typename T>
void swapValues(T &a, T &b) {
    T temp = a;
    a = b;
    b = temp;
}

int main() {
    int num1 = 5, num2 = 10;
    std::cout << "Before swapping: num1 = " << num1 << ", num2 = " << num2 << std::endl;
    swapValues(num1, num2);
    std::cout << "After swapping: num1 = " << num1 << ", num2 = " << num2 << std::endl;
    double double1 = 3.14, double2 = 6.28;
    std::cout << "Before swapping: double1 = " << double1 << ", double2 = " << double2 << std::endl;
    swapValues(double1, double2);
    std::cout << "After swapping: double1 = " << double1 << ", double2 = " << double2 << std::endl;

    return 0;
}

