import 'dart:io';

void main() {

  stdout.write("Enter the radius of the circle: ");
  double radius = double.parse(stdin.readLineSync()!);

  double area = 3.14159 * radius * radius;

  print("The area of the circle with radius $radius is $area square units.");
}
