import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  Random random = new Random();
  int Computer = random.nextInt(101);

  bool status = true;
  int user;
  while (status) {
    print("Enter number");
    user = int.parse(stdin.readLineSync()!);

    if (user > Computer) {
      print("HINT : guess lower number ");
    } else if (user < Computer) {
      print("HINT : guess higher number ");
    } else {
      print("You got it !!!");
      status = false;
    }
  }
}
