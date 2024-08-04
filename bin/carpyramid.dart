import 'dart:io';

void printPyramid(String char, int height) {
  for (int i = 1; i <= height; i++) {
    for (int j = 0; j < height - i; j++) {
      stdout.write(' ');
    }
    for (int k = 0; k < 2 * i - 1; k++) {
      stdout.write(char);
    }
    print('');
  }
}

void main() {
  stdout.write('Enter a character: ');
  String char = stdin.readLineSync()!;
  stdout.write('Enter the height of the pyramid: ');
  int height = int.parse(stdin.readLineSync()!);
  printPyramid(char, height);
}
