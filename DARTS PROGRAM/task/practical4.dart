// with para and with return

import 'dart:io';

void main() {
  print("Enter value of n1");
  int n1 = int.parse(stdin.readLineSync()!);
  int ans1 = mon_to_day(n1);
  print("total days : $ans1");
  int ans2 = year_to_mon(n1);
  print("total month :$ans2");
  int ans3 = year_to_monandday(n1);
  print("total year in total days :$ans3");

  print("Enter value of p");
  double p = double.parse(stdin.readLineSync()!);
  print("Enter value of r");
  double r = double.parse(stdin.readLineSync()!);
  print("Enter value of n");
  double n = double.parse(stdin.readLineSync()!);
  double ans4 = simple_int(p, r, n);
  print("output is $ans4");
  continue_break(n1);
}

int mon_to_day(n) {
  int days = n * 30;
  return days;
}

int year_to_mon(n) {
  int month = n * 12;
  return month;
}

int year_to_monandday(n) {
  int days = n * 362;
  return days;
}

double simple_int(p, r, n) {
  double ans = p * r * n / 100;
  return ans;
}

String continue_break(num) {
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
  return "continue";
}
