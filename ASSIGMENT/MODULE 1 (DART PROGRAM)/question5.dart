/* 
write a program to find area of triangle 
 */
import 'dart:io';

import 'dart:math';

class triangle {
  late double s, a, b, c, ans;

  void input() {
    print("Enter value of a : ");
    a = double.parse(stdin.readLineSync()!);
    print("Enter value of b : ");
    b = double.parse(stdin.readLineSync()!);
    print("Enter value of c : ");
    c = double.parse(stdin.readLineSync()!);

    s = (a + b + c) / 2;
    ans = (sqrt(s * (s - a) * (s - b) * (s - c)));
    print("Area of triangle is : $ans");
  }
}

void main() {
  var obj = new triangle();
  obj.input();
}
