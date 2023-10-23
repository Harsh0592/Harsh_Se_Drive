/*Write a program to calculate the area of circle, rectangle and triangle
usingFunction Overloading
 Rectangle: Area * breadth
 Triangle: 1/2 *Area* breadth
 Circle: Pi * Area *Area*/

#include <iostream>
#include <cmath>

class AreaCalculator {
public:
    double calculateArea(double length, double breadth) {
        return length * breadth;
    }
    double calculateArea(double base, double height, char type) {
        if (type == 't' || type == 'T') {
            return 0.5 * base * height; 
        } else {
            std::cerr << "Invalid type for triangle. Use 't' or 'T'.\n";
            return 0.0;
        }
    }
    double calculateArea(double radius, char type) {
        if (type == 'c' || type == 'C') {
            return M_PI * radius * radius; 
        } else {
            std::cerr << "Invalid type for circle. Use 'c' or 'C'.\n";
            return 0.0;
        }
    }
};

int main() {
    AreaCalculator areaCalc;
    double length, breadth;
    std::cout << "Enter length of the rectangle: ";
    std::cin >> length;
    std::cout << "Enter breadth of the rectangle: ";
    std::cin >> breadth;
    double rectangleArea = areaCalc.calculateArea(length, breadth);
    std::cout << "Area of Rectangle: " << rectangleArea << std::endl;
    double base, height;
    std::cout << "Enter base of the triangle: ";
    std::cin >> base;
    std::cout << "Enter height of the triangle: ";
    std::cin >> height;
    double triangleArea = areaCalc.calculateArea(base, height, 't');
    std::cout << "Area of Triangle: " << triangleArea << std::endl;
    double radius;
    std::cout << "Enter radius of the circle: ";
    std::cin >> radius;
    double circleArea = areaCalc.calculateArea(radius, 'c');
    std::cout << "Area of Circle: " << circleArea << std::endl;

    return 0;
}

