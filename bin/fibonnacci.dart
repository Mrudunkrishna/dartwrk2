import 'dart:io';

int fibonacci(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    int a = 0;
    int b = 1;
    int c;
    for (int i = 2; i <= n; i++) {
      c = a + b;
      a = b;
      b = c;
    }
    return b;
  }
}

void main() {
  print("Enter the n th number");
  int n = int.parse(stdin.readLineSync()!);
  print('The $n-th Fibonacci number is ${fibonacci(n)}');
}