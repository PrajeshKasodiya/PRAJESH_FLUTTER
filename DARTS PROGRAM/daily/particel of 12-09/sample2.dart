/* 
function without parameters and return type 

syntax : 
returntype funname()
{
  return statements
}
*/
import 'dart:io';

void main() {
  print(display());
}

String display() {
  String? msg;
  print("Enter your msg : ");
  msg = stdin.readLineSync()!;

  return msg;
}
