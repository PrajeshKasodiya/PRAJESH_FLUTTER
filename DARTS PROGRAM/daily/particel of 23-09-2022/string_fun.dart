import 'dart:io';

void main() {
  String? s1;
  String? s2;

  print("enter string 1 : ");
  s1 = stdin.readLineSync()!;

  print("enter string 2 : ");
  s2 = stdin.readLineSync()!;

  if (s1.compareTo(s2) == 0) {
    print("same");
  } else {
    print("does not same");
  }

  // for gmail checking
  if (s1.endsWith("@gmail.com")) {
    print("valid email ");
  } else {
    print("invalid email");
  }

  // for check value is given or not
  if (s1.isEmpty) {
    print("enter string");
  } else {
    print(s1);
  }
}
