import 'dart:io';

void genPermu(String s) {
  List<String> result = [];
  _permute(s.split(''), 0, result);
  for (var permutation in result) {
    print(permutation);
  }
}

void _permute(List<String> chars, int index, List<String> result) {
  if (index == chars.length - 1) {
    result.add(chars.join());
  } else {
    for (int i = index; i < chars.length; i++) {
      _swap(chars, index, i);
      _permute(chars, index + 1, result);
      _swap(chars, index, i);
    }
  }
}

void _swap(List<String> chars, int i, int j) {
  String temp = chars[i];
  chars[i] = chars[j];
  chars[j] = temp;
}

void main() {
  print("Enter the String");
  String s = stdin.readLineSync()!; 
  print('All permutations of $s:');
  genPermu(s);
}