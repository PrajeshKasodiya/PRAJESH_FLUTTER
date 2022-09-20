import 'dart:io';

void main() {
  even_odd();
}

void even_odd() {
  print("Enter value of N");
  int N = int.parse(stdin.readLineSync()!);
  int result = N % 2;
  if (result == 0) {
    print(" $N is even number ");
  } else {
    print(" $N is odd number ");
  }
}
