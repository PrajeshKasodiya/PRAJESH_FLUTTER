import 'dart:io';
import 'dart:math';

enum Move {
  Rock,
  Paper,
  Scissors,
}

void main(List<String> args) {
  final RandomNumber = Random();
  while (true) {
    stdout.write("Rock, Paper or Scissors? (r/p/s or q)");
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.Rock;
      } else if (input == 'p') {
        playerMove = Move.Paper;
      } else if (input == 's') {
        playerMove = Move.Scissors;
      }
      final random = RandomNumber.nextInt(3);
      final AutoGenMove = Move.values[random];
      if (playerMove == AutoGenMove) {
        print("it's a draw ");
      } else if (playerMove == Move.Rock && AutoGenMove == Move.Scissors ||
          playerMove == Move.Paper && AutoGenMove == Move.Rock ||
          playerMove == Move.Scissors && AutoGenMove == Move.Paper) {
        print("You win");
      } else {
        print("You loss");
      }
      print("selected : $input");
    } else if (input == 'q') {
      break;
    } else {
      print("Invalid input");
    }
  }
}
