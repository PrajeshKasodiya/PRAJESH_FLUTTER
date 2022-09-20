import 'dart:io';

void main() {
  int n1, n2;
  print("Enter number 1 :");
  n1 = int.parse(stdin.readLineSync()!);

  print("Enter number 2 :");
  n2 = int.parse(stdin.readLineSync()!);
  addtion(n1, n2);
  multification(n1, n2);
  division(n1, n2);
  sub(n1, n2);
}

void addtion(int num1, int num2) {
  int ans;
  ans = num1 + num2;
  print("addition answer is  = $ans");
}

void multification(int num1, int num2) {
  int ans;
  ans = num1 * num2;
  print("multification answer is = $ans");
}

void division(int num1, int num2) {
  int ans;
  ans = num1 % num2;
  print("division answer is = $ans");
}

void sub(int num1, int num2) {
  int ans;
  ans = num1 - num2;
  print("sub answer is= $ans");
}
