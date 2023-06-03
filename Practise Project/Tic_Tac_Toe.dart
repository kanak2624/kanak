import 'dart:io';

void main() {
  // Create a 3x3 game board
  List<List<String>> board = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' '],
  ];

  bool isPlayer1Turn = true;
  bool isGameOver = false;

  while (!isGameOver) {
    printBoard(board);

    // Determine the current player
    String currentPlayer = isPlayer1Turn ? 'Player 1 (X)' : 'Player 2 (O)';
    print('$currentPlayer\'s turn. Enter row and column (e.g. 1 2):');

    // Get the user's move
    List<int> move = getPlayerMove();

    // Validate the move
    if (isValidMove(move, board)) {
      // Update the board with the player's move
      int row = move[0];
      int col = move[1];
      String symbol = isPlayer1Turn ? 'X' : 'O';
      board[row][col] = symbol;

      // Check if the game is over
      if (isWinningMove(symbol, board)) {
        printBoard(board);
        print('$currentPlayer wins!');
        isGameOver = true;
      } else if (isBoardFull(board)) {
        printBoard(board);
        print('It\'s a draw!');
        isGameOver = true;
      } else {
        // Switch turns to the other player
        isPlayer1Turn = !isPlayer1Turn;
      }
    } else {
      print('Invalid move. Please try again.');
    }
  }
}

void printBoard(List<List<String>> board) {
  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 3; col++) {
      stdout.write(board[row][col]);
      if (col < 2) {
        stdout.write(' | ');
      }
    }
    stdout.write('\n');
    if (row < 2) {
      stdout.write('---------\n');
    }
  }
  stdout.write('\n');
}

List<int> getPlayerMove() {
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(' ');
  List<int> move = inputList.map(int.parse).toList();
  return move;
}

bool isValidMove(List<int> move, List<List<String>> board) {
  int row = move[0];
  int col = move[1];
  return row >= 0 && row < 3 && col >= 0 && col < 3 && board[row][col] == ' ';
}

bool isWinningMove(String symbol, List<List<String>> board) {
  // Check rows
  for (int row = 0; row < 3; row++) {
    if (board[row][0] == symbol &&
        board[row][1] == symbol &&
        board[row][2] == symbol) {
      return true;
    }
  }

  // Check columns
  for (int col = 0; col < 3; col++) {
    if (board[0][col] == symbol &&
        board[1][col] == symbol &&
        board[2][col] == symbol) {
      return true;
    }
  }

  // Check diagonals
  if (board[0][0] == symbol &&
      board[1][1] == symbol &&
      board[2][2] == symbol) {
    return true;
  }
  if (board[0][2] == symbol &&
      board[1][1] == symbol &&
      board[2][0] == symbol) {
    return true;
  }

  return false;
}

bool isBoardFull(List<List<String>> board) {
  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 3; col++) {
      if (board[row][col] == ' ') {
        return false;
      }
    }
  }
  return true;
}
