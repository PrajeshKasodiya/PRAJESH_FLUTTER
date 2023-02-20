/* 
q-9 write a program to show swap of two no's without using third variable 
*/
import 'dart:io';

void main() {
  input();
}

void input() {
  print("Enter number 1 : ");
  int Fnum = int.parse(stdin.readLineSync()!);
  print("Enter number 2 : ");
  int Snum = int.parse(stdin.readLineSync()!);

  Fnum = Fnum + Snum;
  Snum = Fnum - Snum;
  Fnum = Fnum - Snum;

  print("After swap : \n");
  print("First number : $Fnum , Second number : $Snum");
}
