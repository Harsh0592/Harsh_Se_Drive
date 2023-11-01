import 'dart:io';

void main() {
  double celsius, fahrenheit;

  stdout.write("Enter temperature in degrees Celsius: ");
  celsius = double.parse(stdin.readLineSync()!);

  fahrenheit = (celsius * 9/5) + 32;

  print("Temperature in Fahrenheit: $fahrenheit°F");
}
