//WAP to create simple calculator using class

#include<iostream>
using namespace std;
class Calculator {
public:
    int add(double a, double b) {
        cout<<"This is the Addition "<<a + b<<endl;
    }
	int subtract(double a, double b) {
        cout<<"This is the subtract "<<a - b<<endl;
    }
    int multiply(double a, double b) {
        cout<<"This is the Multiply "<<a * b<<endl;
    }
    int divide(double a, double b) {
        if (b != 0) {
            cout<<"This is the Divide "<<a / b<<endl;
        } 
		else 
		{
            cout << "Error: Division by zero is undefined." << endl;
            return 0.0;
        }
    }
};

int main() {
   Calculator obj;
   obj.add(8,5);
   obj.divide(45,5);
   obj.multiply(5,5);
   obj.subtract(65,50);
    return 0;
}

