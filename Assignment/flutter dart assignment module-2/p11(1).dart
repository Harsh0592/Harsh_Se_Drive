import 'dart:io';

void main() {
  int rows = 5;

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('*');
    }
    stdout.write('\n');
  }
}
