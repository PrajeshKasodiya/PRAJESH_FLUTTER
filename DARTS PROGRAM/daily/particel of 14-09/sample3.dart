import 'dart:io';

class sample {
  // data member
  late int num;

  void input() {
    print("Enter a number : ");
    num = int.parse(stdin.readLineSync()!);
  }

  void display() {
    if (num % 2 == 0) {
      print("number is even");
    } else {
      print("number is odd");
    }
  }
}

void main() {
  var obj = new sample();
  obj.input();
  obj.display();
}
