/* 
q-8 write a program to calculate sum of 5 subject & find the percenteage. subject marks entered by user 
*/
import 'dart:io';

void main() {
  input();
}

void input() {
  print("Enter your marks\n-----------------------");
  print("1) English : ");
  int English = int.parse(stdin.readLineSync()!);
  print("2) Maths : ");
  int Maths = int.parse(stdin.readLineSync()!);
  print("3) Gujrati : ");
  int Gujrati = int.parse(stdin.readLineSync()!);
  print("4) Hindi : ");
  int Hindi = int.parse(stdin.readLineSync()!);
  print("5) Science : ");
  int Science = int.parse(stdin.readLineSync()!);
  int answer = sum(English, Maths, Gujrati, Hindi, Science);
  print("Total marks is : $answer");
  percentage(answer);
}

int sum(a, b, c, d, e) {
  int sum = a + b + c + d + e;
  return sum;
}

void percentage(answer) {
  double per = answer * 100 / 500;
  print("percentage : $per");
}
