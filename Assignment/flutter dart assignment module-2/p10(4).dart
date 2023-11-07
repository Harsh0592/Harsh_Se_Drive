import 'dart:io';

void main() {
  stdout.write("Enter a number to find its factorial: ");
  int number = int.parse(stdin.readLineSync() ?? '0');

  if (number < 0) {
    print("Factorial is not defined for negative numbers.");
  } else {
    int result = calculateFactorial(number);
    print("Factorial of $number is $result");
  }
}

int calculateFactorial(int n) {
  if (n == 0) {
    return 1; 
  } else {
    return n * calculateFactorial(n - 1);
  }
}
