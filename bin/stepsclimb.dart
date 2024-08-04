import 'dart:io';

import 'package:dartwork2/dartwork2.dart' as dartwork2;

int climbStairs(int n) {
  if (n <= 1) {
    return 1;
  }

  List<int> dp = List.filled(n + 1, 0);
  dp[0] = 1;
  dp[1] = 1;

  for (int i = 2; i <= n; i++) {
    dp[i] = dp[i - 1] + dp[i - 2];
  }

  return dp[n];
}

void main() {
  print("Enter the number : ");
  int n = int.parse(stdin.readLineSync()!);
  print('Number of ways to climb $n steps: ${climbStairs(n)}');
}
