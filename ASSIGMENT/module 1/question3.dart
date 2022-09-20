/* 
write a program to make a square and cube of number
 */

import 'dart:io';

void main() {
  square_cube();
}

void square_cube() {
  print("Enter a number");
  int number = int.parse(stdin.readLineSync()!);
  int ans = number * number;
  print(" square answer is : $ans");
  int ans1 = number * number * number;
  print(" cube answer is : $ans1");
}
