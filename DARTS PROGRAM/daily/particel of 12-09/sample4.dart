import 'dart:io';

void main() {
  int n1;
  print("Enter number :");
  n1 = int.parse(stdin.readLineSync()!);
  int output = con(n1);
  print("$output");
}

int con(int num1) {
  int ans = num1 % 2;
  if (ans == 0) {
    print("number is Even");
  } else {
    print("number is odd");
  }
  return ans;
}
