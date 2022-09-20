import 'dart:io';

void main() {
  bool status = true;
  String? choice;
  int num;
  while (status) {
    print("enter your number");
    num = int.parse(stdin.readLineSync()!);

    print("do you want to continue press y for yes and n for no : ");
    choice = stdin.readLineSync()!;
    if (choice == 'y') {
      status = true;
    } else {
      status = false;
    }
  }
}
