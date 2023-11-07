void main() {
  // ignore: equal_elements_in_set
  Set<String> fruits = {'apple', 'banana', 'cherry', 'banana'};
  print("Set of fruits: $fruits");
  fruits.add('orange');
  fruits.add('kiwi');
  print("Set after adding 'orange' and 'kiwi': $fruits");
  fruits.remove('apple');
  print("Set after removing 'apple': $fruits");
  bool containsBanana = fruits.contains('banana');
  print("Does the set contain 'banana'? $containsBanana");
  int size = fruits.length;
  print("Size of the set: $size");
  print("Iterating through the set:");
  for (String fruit in fruits) {
    print(fruit);
  }
}
