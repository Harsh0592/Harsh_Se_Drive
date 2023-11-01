import 'dart:io';

void main() {

  stdout.write("Enter the length of the base of the triangle: ");
  double base = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the height of the triangle: ");
  double height = double.parse(stdin.readLineSync()!);

  double area = (base * height) / 2;

  print("The area of the triangle with base $base and height $height is $area square units.");
}
