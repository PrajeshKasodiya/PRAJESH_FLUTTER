// with para and without return

import 'dart:io';

void main() {
  print("Enter value of n1");
  int n1 = int.parse(stdin.readLineSync()!);
  mon_to_day(n1);
  year_to_mon(n1);
  year_to_monandday(n1);

  print("Enter value of p");
  double p = double.parse(stdin.readLineSync()!);
  print("Enter value of r");
  double r = double.parse(stdin.readLineSync()!);
  print("Enter value of n");
  double n = double.parse(stdin.readLineSync()!);
  simple_int(p, r, n);

  continue_break(n1);
}

void mon_to_day(num) {
  int days = num * 30;
  print("total days is : $days");
}

void year_to_mon(num1) {
  int month = num1 * 12;
  print("total month is : $month");
}

void year_to_monandday(num) {
  int month = num * 12;
  print("total month is : $month");
  int days = num * 362;
  print("total days is : $days");
}

void simple_int(a, b, c) {
  double ans = a * b * c / 100;
  print("output is $ans");
}

void continue_break(num) {
  for (int i = 0; i < num; i++) {
    print("Enter student marks :");
    int marks = int.parse(stdin.readLineSync()!);
    if (marks > 35) {
      print("you are pass : your marks is $marks");
    } else {
      print("you are fail");
      break;
    }
    print("enter more number");
  }
}
