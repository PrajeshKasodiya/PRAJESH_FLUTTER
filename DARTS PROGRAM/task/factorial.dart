import 'dart:io';

void main() {
  factorial();
}

void factorial() {
  print("Enter N");
  int N = int.parse(stdin.readLineSync()!);
  int result = 1;
  for (int i = 1; i <= N; i++) {
    result *= i;
  }
  print("factorial of $N");
  print(result);
}
