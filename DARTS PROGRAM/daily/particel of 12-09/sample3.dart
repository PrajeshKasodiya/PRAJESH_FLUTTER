import 'dart:io';

void main() {
  int n1;
  print("Enter number :");
  n1 = int.parse(stdin.readLineSync()!);
  int ans = con(n1);
  print("$ans");
}

int con(int num1) {
  if (num1 > 0) {
    print("number is positive");
  } else if (num1 == 0) {
    print("number is Zero");
  } else {
    print("number is negative");
  }

  return num1;
}
