import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync() ?? '0');
  
  String numberStr = number.toString();
  String reversedNumberStr = reverseString(numberStr);
  
  int reversedNumber = int.parse(reversedNumberStr);
  
  print("Number in reverse order: $reversedNumber");
}

String reverseString(String input) {
  return String.fromCharCodes(input.runes.toList().reversed);
}
