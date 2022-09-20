// without para and without return

import 'dart:io';

void main() {
  mon_to_day();
  year_to_mon();
  year_to_monandday();
  simple_int();
  continue_break();
}

void mon_to_day() {
  print("Enter number of month");
  int n1 = int.parse(stdin.readLineSync()!);
  int days = n1 * 30;
  print("total days is : $days");
}

void year_to_mon() {
  print("Enter number of year");
  int n1 = int.parse(stdin.readLineSync()!);
  int month = n1 * 12;
  print("total month is : $month");
}

void year_to_monandday() {
  print("Enter number of year");
  int n1 = int.parse(stdin.readLineSync()!);
  int month = n1 * 12;
  print("total month is : $month");
  int days = n1 * 362;
  print("total days is : $days");
}

void simple_int() {
  double ans;
  print("Enter value of p");
  double p = double.parse(stdin.readLineSync()!);
  print("Enter value of r");
  double r = double.parse(stdin.readLineSync()!);
  print("Enter value of n");
  double n = double.parse(stdin.readLineSync()!);

  ans = p * r * n / 100;
  print("output is $ans");
}

void continue_break() {
  for (int i = 0; i < 5; i++) {
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
