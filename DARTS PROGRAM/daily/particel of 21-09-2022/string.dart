import 'dart:io';

void main() {
  String? s1;
  String? s2;

  print("enter string 1 : ");
  s1 = stdin.readLineSync()!;

  print("enter string 2 : ");
  s2 = stdin.readLineSync()!;

  print("String 1: " + s1.toLowerCase());
  print("String 2: " + s2.toUpperCase());
}
