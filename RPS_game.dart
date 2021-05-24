//logical break down
//Step 1: Show promt
//Step 2: Read input from console
//Step 3: If valid move then choose random computer move,
//           if 'q' then quit the program
//           else invaild move
// have all this in infinite loop,so that we can play again n again till the loop breaks.

import 'dart:io';

import 'dart:math';

enum Moves { rock, paper, scissors }
void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, paper or scissor ? (r,p,s)  ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 's' || input == 'p') {
      var playerMove; // this var is null now, because the value is not been assigned yet, once the below code is exicuted then only the value will be assigned.
      if (input == 'r') {
        playerMove = Moves.rock;
      } else if (input == 'p') {
        playerMove = Moves.paper;
      } else if (input == 's') {
        playerMove = Moves.scissors;
      }
      final randomNum = rng.nextInt(3);
      final computerMove = Moves.values[
          randomNum]; //.values creates a list of contents in enum ranging from 0 to n-1, here we have assigned the random value from range 0 to 3 to this enmun value
      print('you played $playerMove');
      print('computer played $computerMove');
      if (playerMove == computerMove) {
        print('Draw try again');
      } else if (playerMove == Moves.paper && computerMove == Moves.rock ||
          playerMove == Moves.rock && computerMove == Moves.scissors ||
          playerMove == Moves.scissors && computerMove == Moves.paper) {
        print('Player wins');
      } else {
        print('Computer wins');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('invalid input');
    }
  }
}
