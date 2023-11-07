void main() {
  for (int i = 1; i <= 5; i++) {
    String numberString = '';
    for (int j = 1; j <= i; j++) {
      numberString += j.toString();
    }
    print(numberString);
  }
}
