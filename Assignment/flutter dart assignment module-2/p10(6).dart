import 'dart:io';

void main() {
  stdout.write("Enter a number to print its table: ");
  int number = int.parse(stdin.readLineSync() ?? '0');

  if (number < 0) {
    print("Table is not defined for negative numbers.");
  } else {
    print("Table of $number:");

    for (int i = 1; i <= 10; i++) {
      int product = number * i;
      print("$number x $i = $product");
    }
  }
}
