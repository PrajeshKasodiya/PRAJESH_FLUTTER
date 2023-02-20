/*  
 q-11 Write a Program to check the given year is leap year or not.
*/

import 'dart:io';

void main() {
  print("Enter a year to check : ");
  int year = int.parse(stdin.readLineSync()!);

  if (isLeapYear(year)) {
    print("Leap Year");
  } else {
    print("Not a Leap Year");
  }
}

bool isLeapYear(year) {
  if (year % 4 == 0) {
    return true;
  } else {
    return false;
  }
}
