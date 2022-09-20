import 'dart:io';

void main() {
  menu();
  selection();
}

void menu() {
  print("     Jay bhavani menu     \n-------------------------");
  print("NO  Items             price");
  print(
      "\n(1) Vadapav           : 30\n(2) Bhel              : 65\n(3) Dabeli            : 30 ");
}

void selection() {
  print("Enter Item Number Which You can purchase\n");
  int number = int.parse(stdin.readLineSync()!);

  if (number == 1) {
    print("(1) Vadapav           : 30");
    vadapav();
  } else if (number == 2) {
    print("(2) Bhel              : 65");
    bhel();
  } else if (number == 3) {
    print("(3) Dabeli            : 30");
    dabeli();
  } else {
    print("sorry you not chosen any item"); // you leave the program solve error
  }
}

void vadapav() {
  print("Enter number of quantity : ");
  int vadapav = int.parse(stdin.readLineSync()!);
  int total = vadapav * 30;
  print("Price will be : $total");
  anothertime();
}

void bhel() {
  print("Enter number of quantity : ");
  int bhel = int.parse(stdin.readLineSync()!);
  int total = bhel * 65;
  print(" Price will be : $total");
  anothertime();
}

void dabeli() {
  print("Enter number of quantity : ");
  int dabeli = int.parse(stdin.readLineSync()!);
  int total = dabeli * 30;
  print(" Price will be : $total");
  anothertime();
}

void anothertime() {
  bool status = true;
  String? choice;
  while (status) {
    print("do you want to purchase more item press y for yes and n for no:");
    choice = stdin.readLineSync()!;
    if (choice == 'y') {
      menu();
      selection();
    } else {
      status = false;
      break;
    }
  }
}
