import 'dart:io';

void main() {
  double result;
  bool isValid = false;

  while (!isValid) {
    print("Menu:");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Exit");
    stdout.write("Enter your choice (1/2/3/4/5): ");
    String choice = stdin.readLineSync() ?? '';

    switch (choice) {
      case '1':
        isValid = true;
        double num1 = getNumber("Enter the first number: ");
        double num2 = getNumber("Enter the second number: ");
        result = num1 + num2;
        print("Result: $result");
        break;
      case '2':
        isValid = true;
        double num1 = getNumber("Enter the first number: ");
        double num2 = getNumber("Enter the second number: ");
        result = num1 - num2;
        print("Result: $result");
        break;
      case '3':
        isValid = true;
        double num1 = getNumber("Enter the first number: ");
        double num2 = getNumber("Enter the second number: ");
        result = num1 * num2;
        print("Result: $result");
        break;
      case '4':
        isValid = true;
        double num1 = getNumber("Enter the first number: ");
        double num2 = getNumber("Enter the second number: ");
        if (num2 == 0) {
          print("Error: Division by zero is not allowed.");
        } else {
          result = num1 / num2;
          print("Result: $result");
        }
        break;
      case '5':
        isValid = true;
        print("Exiting the program.");
        break;
      default:
        print("Invalid choice. Please select a valid option.");
    }
  }
}

double getNumber(String prompt) {
  stdout.write(prompt);
  String input = stdin.readLineSync() ?? '0';
  return double.tryParse(input) ?? 0;
}
