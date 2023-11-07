import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync() ?? '0');
  
  int lastDigit = number % 10;  // Get the last digit
  int firstDigit = int.parse(number.toString()[0]);  // Get the first digit

  int sum = firstDigit + lastDigit;

  print("Sum of the first and last digits: $sum");
}
