import 'dart:io';

void main() {
  positive_negative();
}

void positive_negative() {
  print("Enter value of N");
  int N = int.parse(stdin.readLineSync()!);
  if (N > 0) {
    print(" $N is positive number ");
  } else if (N == 0) {
    print(" $N is zero number ");
  } else {
    print(" $N is negative number ");
  }
}
