// q-14 Write a program to find the Max number from the given three number using Ternary Operator
import 'dart:io';

void main() {
  print("Enter number 1 : ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter number 2 : ");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter number 3 : ");
  int num3 = int.parse(stdin.readLineSync()!);
  int ans = findMaxVal(num1, num2, num3);
  print("Maximum numbr is : $ans");
}

int findMaxVal(int a, int b, int c) {
  int maxVal = (a > b) ? ((a > c) ? a : c) : ((b > c) ? b : c);
  return maxVal;
}
