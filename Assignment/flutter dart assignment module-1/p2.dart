void main() {
  double num1 = 10.0;
  double num2 = 5.0;
  double sum = num1 + num2;
  print("Addition: $num1 + $num2 = $sum");
  double difference = num1 - num2;
  print("Subtraction: $num1 - $num2 = $difference");
  double product = num1 * num2;
  print("Multiplication: $num1 * $num2 = $product");
  if (num2 != 0) {
    double quotient = num1 / num2;
    print("Division: $num1 / $num2 = $quotient");
  } else {
    print("Division by zero is not allowed.");
  }
}
