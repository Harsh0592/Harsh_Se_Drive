//Write a program of Addition, Subtraction, Division, Multiplication using constructor.

#include<iostream>
using namespace std;
class person{
	public:
		person(double num,double num1){
			cout<<"This is your Addition :"<<num+num1<<endl;
			cout<<"This is your Substraction :"<<num-num1<<endl;
			cout<<"This is your Division :"<<num/num1<<endl;
			cout<<"This is your Multiplication"<<num*num1<<endl;
		}
};

int main(){
	double num,num1;
	cout<<"Enter your values here :";
	cin>>num;
	cout<<"Enter your values here :";
	cin>>num1;
	person obj(num,num1);
}
