/* 
write a program to find simple interest  
 */

import 'dart:io';

void main() {
  print("Enter value of p");
  double p = double.parse(stdin.readLineSync()!);
  print("Enter value of r");
  double r = double.parse(stdin.readLineSync()!);
  print("Enter value of n");
  double n = double.parse(stdin.readLineSync()!);
  double ans4 = simple_int(p, r, n);
  print("output is $ans4");
}

double simple_int(p, r, n) {
  double ans = p * r * n / 100;
  return ans;
}
