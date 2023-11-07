void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("List of numbers: $numbers");
  print("First element: ${numbers[0]}");
  print("Second element: ${numbers[1]}");
  numbers[2] = 10;
  print("Modified list: $numbers");
  numbers.add(6);
  print("List after adding 6: $numbers");
  numbers.remove(4);
  print("List after removing 4: $numbers");
  int length = numbers.length;
  print("Length of the list: $length");
  print("Iterating through the list:");
  for (int number in numbers) {
    print(number);
  }
  bool containsThree = numbers.contains(3);
  print("Does the list contain 3? $containsThree");
}
