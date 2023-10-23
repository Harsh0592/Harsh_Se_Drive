/*Create a class person having members name and age. Derive a class student
having member percentage. Derive another class teacher having member
salary. Write necessary member function to initialize, read and write data.
Write also Main function (Multiple Inheritance)*/

#include <iostream>
using namespace std;
class Person {
protected:
    string name;
    int age;

public:
    Person() : name(""), age(0) {}
    Person(const string& n, int a) : name(n), age(a){}
    void readData() {
        cout << "Enter name: ";
        cin >> name;
        cout << "Enter age: ";
        cin >> age;
    }
    void writeData() const {
        cout << "Name: " << name << endl;
        cout << "Age: " << age << endl;
    }
};
class Student : public Person {
protected:
    float percentage;
public:
    Student() : percentage(0.0) {}
    Student(const string& n, int a, float p) : Person(n, a), percentage(p) {}
    void readData() {
        Person::readData();
        cout << "Enter percentage: ";
        cin >> percentage;
    }
    void writeData() const {
        Person::writeData();
        cout << "Percentage: " << percentage << "%" << endl;
    }
};
class Teacher : public Person {
protected:
    double salary;

public:
    Teacher() : salary(0.0) {}
    Teacher(const string& n, int a, double s) : Person(n, a), salary(s) {}
    void readData() {
        Person::readData();
        cout << "Enter salary: ";
        cin >> salary;
    }
    void writeData() const {
        Person::writeData();
        cout << "Salary: $" << salary << endl;
    }
};

int main() {
    Student studentObj;
    Teacher teacherObj;
    cout << "Enter data for Student:" << endl;
    studentObj.readData();
    cout << "\nStudent Information:" << endl;
    studentObj.writeData();
    cout << endl;
    cout << "Enter data for Teacher:" << endl;
    teacherObj.readData();
    cout << "\nTeacher Information:" << endl;
    teacherObj.writeData();

    return 0;
}

