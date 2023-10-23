//Write a program to find the multiplication values and the cubic values using inline function

#include<iostream>
using namespace std;
inline double multiply(double a, double b) {
    return a * b;
}
inline double cube(double a) {
    return a * a * a;
}
int main() {
    double num;
    cout << "Enter a number: ";
    cin >> num;
    double multiplicationResult = multiply(num, 5.5);
    double cubicResult = cube(num);
    cout << "Multiplication with 2: " << multiplicationResult << endl;
    cout << "Cubic value: " << cubicResult << endl;
    return 0;
}

