/* 
write a program to find area of circle 
 */

import 'dart:io';

void main() {
  double r, area;
  print("Enter value of redius");
  r = double.parse(stdin.readLineSync()!);
  area = findarea(r);
  print("area of circle is : $area");
}

double findarea(r) {
  const double pi = 3.14159265358979323846;
  return (pi * r * r);
}
