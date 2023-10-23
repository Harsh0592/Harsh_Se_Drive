/*Write a program to Mathematic operation like Addition, Subtraction,
Multiplication, Division Of two number using different parameters and
Function Overloading*/

#include <iostream>

class MathOperations {
public:
    int performOperation(int num1, int num2) {
        return num1 + num2;
    }
    double performOperation(double num1, double num2) {
        return num1 + num2;
    }
    int performOperation(int num1, int num2, char operation) {
        return (operation == '-') ? (num1 - num2) : (num2 - num1);
    }
    double performOperation(double num1, double num2, char operation) {
        return (operation == '-') ? (num1 - num2) : (num2 - num1);
    }
    int performOperation(int num1, int num2, char operation, int dummy) {
        return (operation == '*') ? (num1 * num2) : 0;
    }
    double performOperation(double num1, double num2, char operation, int dummy) {
        return (operation == '*') ? (num1 * num2) : 0.0; 
    }
   
};

int main() {
    MathOperations mathObj;
    int resultIntAdd = mathObj.performOperation(5, 3);
    std::cout << "Integer Addition Result: " << resultIntAdd << std::endl;
    double resultDoubleAdd = mathObj.performOperation(5.5, 3.3);
    std::cout << "Double Addition Result: " << resultDoubleAdd << std::endl;
    int resultIntSub = mathObj.performOperation(5, 3, '-');
    std::cout << "Integer Subtraction Result: " << resultIntSub << std::endl;
    double resultDoubleSub = mathObj.performOperation(5.5, 3.3, '-');
    std::cout << "Double Subtraction Result: " << resultDoubleSub << std::endl;
    int resultIntMul = mathObj.performOperation(5, 3, '*', 0);
    std::cout << "Integer Multiplication Result: " << resultIntMul << std::endl;
    double resultDoubleMul = mathObj.performOperation(5.5, 3.3, '*', 0);
    std::cout << "Double Multiplication Result: " << resultDoubleMul << std::endl;
    double resultIntDiv = mathObj.performOperation(10, 2, '/');
  
    
    return 0;
}

