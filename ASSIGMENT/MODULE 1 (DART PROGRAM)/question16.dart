// Write a program user enter the 5 subjects mark. You have to make a total and find the percentage.
// percentage > 75 you have to print “Distinction” percentage > 60 and percentage <= 75 you have to
// print “First class” percentage >50 and percentage <= 60 you have to print “Second class” percentage >
// 35 and percentage <= 50 you have to print “Pass class” Otherwise print “Fail”

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
  print("Your percentage is : $per%");
  if (per > 75) {
    print("Distinction");
  } else if (per > 60 && per <= 75) {
    print("First class");
  } else if (per > 50 && per <= 60) {
    print("Second class");
  } else if (per > 35 && per <= 50) {
    print("Pass class");
  } else {
    print("Fail");
  }
}
