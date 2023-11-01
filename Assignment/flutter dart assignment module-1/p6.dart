import 'dart:io';

void main() {
  double principal, rate, time;

  stdout.write("Enter the principal amount: ");
  principal = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the annual interest rate (as a percentage): ");
  rate = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the time (in years): ");
  time = double.parse(stdin.readLineSync()!);

  double simpleInterest = (principal * rate * time) / 100;

  print("Simple Interest: $simpleInterest");
}
