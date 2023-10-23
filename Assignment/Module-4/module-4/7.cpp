/*Assume that the test results of a batch ofstudents are stored in three different
classes. Class Students are storing the roll number. Class Test stores the
marksobtained in two subjects and class result contains the total marks
obtained in the test. The class result can inherit the details of the marks
obtained in the test and roll number of students. (Multilevel Inheritance)*/

#include <iostream>

using namespace std;
class Student {
protected:
    int rollNumber;

public:
    Student() : rollNumber(0) {}
    Student(int roll) : rollNumber(roll) {}
    void readStudentData() {
        cout << "Enter roll number: ";
        cin >> rollNumber;
    }
    void displayStudentData() const {
        cout << "Roll Number: " << rollNumber << endl;
    }
};
class Test : public Student {
protected:
    float subject1Marks;
    float subject2Marks;

public:
    Test() : subject1Marks(0.0), subject2Marks(0.0) {}
    Test(int roll, float marks1, float marks2) : Student(roll), subject1Marks(marks1), subject2Marks(marks2) {}
    void readTestData() {
        cout << "Enter marks for Subject 1: ";
        cin >> subject1Marks;
        cout << "Enter marks for Subject 2: ";
        cin >> subject2Marks;
    }
    void displayTestData() const {
        cout << "Subject 1 Marks: " << subject1Marks << endl;
        cout << "Subject 2 Marks: " << subject2Marks << endl;
    }
};
class Result : public Test {
protected:
    float totalMarks;

public:
    Result() : totalMarks(0.0) {}
    Result(int roll, float marks1, float marks2) : Test(roll, marks1, marks2) {}
    void calculateTotalMarks() {
        totalMarks = subject1Marks + subject2Marks;
    }
    void displayResultData() const {
        cout << "Total Marks: " << totalMarks << endl;
    }
};

int main() {
    Result resultObj;
    resultObj.readStudentData();
    resultObj.readTestData();
    resultObj.calculateTotalMarks();
    cout << "\nStudent Information:" << endl;
    resultObj.displayStudentData();
    cout << "\nTest Information:" << endl;
    resultObj.displayTestData();
    cout << "\nResult Information:" << endl;
    resultObj.displayResultData();

    return 0;
}

