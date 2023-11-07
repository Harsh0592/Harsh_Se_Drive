import 'dart:io';

void main() {
  double totalMarks = 0;
  double percentage;
  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter marks for subject $i: ");
    double marks = double.parse(stdin.readLineSync() ?? '0');
    totalMarks += marks;
  }
  percentage = (totalMarks / 500) * 100;
  if (percentage > 75) {
    print("Distinction");
  } else if (percentage > 60 && percentage <= 75) {
    print("First class");
  } else if (percentage > 50 && percentage <= 60) {
    print("Second class");
  } else if (percentage > 35 && percentage <= 50) {
    print("Pass class");
  } else {
    print("Fail");
  }
}
