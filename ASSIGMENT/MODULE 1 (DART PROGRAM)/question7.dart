/* 
q-7 write a program to convert temperature from degree centigrade to fahrenheit
*/
import 'dart:io';

void main() {
  print("Enter value of N : ");
  double N = double.parse(stdin.readLineSync()!);
  double ans = centigrade_to_fahrenheit(N);
  print("output is : $ans");
}

double centigrade_to_fahrenheit(N) {
  return ((N * 9.0 / 5.0) + 32.0);
}
