/* 
q-9 write a program to show swap of two no's without using third variable 
*/
import 'dart:io';

void main() {
  input();
}

void input() {
  int num;
  print("Enter number 1 : ");
  int Fnum = int.parse(stdin.readLineSync()!);
  print("Enter number 2 : ");
  int Snum = int.parse(stdin.readLineSync()!);

  num = Fnum;
  Fnum = Snum;
  Snum = num;

  print("After swap : \n");
  print("First number : $Fnum , Second number : $Snum");
}
