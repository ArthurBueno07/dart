import 'dart:io';

void main() {
  List<String> board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '];
  int player = 1;
  String mark = '';

  print('JOGO DA VELHA');
  printBoard(board);

  while (!checkWin(board) && !checkDraw(board)) {
    mark = getPlayerMark(player);
    int move = getMove(board, mark);
    board[move] = mark;

    printBoard(board);

    if (checkWin(board)) {
      print('O JOGADOR $player VENCEU!');
    } else if (checkDraw(board)) {
      print('EMPATE!');
    } else {
      player = (player == 1) ? 2 : 1;
    }
  }
}

void printBoard(List<String> board) {
  print('');
  print(' ${board[0]} | ${board[1]} | ${board[2]} ');
  print('---+---+---');
  print(' ${board[3]} | ${board[4]} | ${board[5]} ');
  print('---+---+---');
  print(' ${board[6]} | ${board[7]} | ${board[8]} ');
  print('');
}

String getPlayerMark(int player) {
  return (player == 1) ? 'X' : 'O';
}

int getMove(List<String> board, String mark) {
  int move = -1;

  while (move == -1) {
    print('Jogador $mark, faça sua jogada (1-9):');
    String input = stdin.readLineSync()!;
    int index = int.tryParse(input) ?? -1;

    if (index >= 1 && index <= 9 && board[index - 1] == ' ') {
      move = index - 1;
    } else {
      print('Jogada inválida!');
    }
  }

  return move;
}

bool checkWin(List<String> board) {
  List<List<int>> winConditions = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], // horizontal
    [0, 3, 6], [1, 4, 7], [2, 5, 8], // vertical
    [0, 4, 8], [2, 4, 6] // diagonal
  ];

  for (List<int> condition in winConditions) {
    String mark = board[condition[0]];
    if (mark != ' ' && mark == board[condition[1]] && mark == board[condition[2]]) {
      return true;
    }
  }

  return false;
}

bool checkDraw(List<String> board) {
  return !board.contains(' ');
}
