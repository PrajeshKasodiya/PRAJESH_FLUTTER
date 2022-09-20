// Write Program use switch statement. Display Monday to Sunday

import 'dart:io';

void main() {
  int weeks;
  print("Enter 1 to 6 number for weekday");
  weeks = int.parse(stdin.readLineSync()!);

  switch (weeks) {
    case 1:
      print("monday");
      break;
    case 2:
      print("tuesday");
      break;
    case 3:
      print("wednesday");
      break;
    case 4:
      print("thursday");
      break;
    case 5:
      print("friday");
      break;
    case 6:
      print("saturday");
      break;
    default:
      print("sunday");
  }
}
