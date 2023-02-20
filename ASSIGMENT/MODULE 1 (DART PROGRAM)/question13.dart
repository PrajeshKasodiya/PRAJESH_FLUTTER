/*  
 q-13 Write a program to find the Max number from the given three number using Nested If.
*/

import 'dart:io';

void main() {
  print("Enter number 1 : ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter number 2 : ");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter number 3 : ");
  int num3 = int.parse(stdin.readLineSync()!);

  if (num1 >= num2) {
    if (num1 >= num3) {
      print("Number 1 is max number : $num1");
    } else {
      print("Number 3 is max number : $num3");
    }
  } else {
    if (num2 >= num3) {
      print("Number 2 is max number : $num2");
    } else {
      print("Number 3 is max number : $num3");
    }
  }
}
