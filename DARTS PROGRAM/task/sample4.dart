import 'dart:io';

class sample {
  late int num1, num2;
  void input() {
    print("Enter one number ");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter second number ");
    num2 = int.parse(stdin.readLineSync()!);
  }

  void addtion() {
    int ans = num1 + num2;
    print("addtion is : $ans");
  }

  void sub() {
    int ans = num1 - num2;
    print("android");
  }

  void multi() {
    int ans = num1 * num2;
  }
}

void main() {
  var obj = new sample();
  obj.input();
  obj.addtion();
  obj.sub();
  obj.multi();
}
