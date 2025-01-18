import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List _board = List.generate(9, (index) => "");
  String _current_player = "X";
  String _winner = "";
  bool _isGameOver = false;

  void _makeMove(int index) {
    if (_board[index] == "" && !_isGameOver) {
      setState(() {
        _board[index] = _current_player;
        if (_checkWinner() == true) {
          _winner = _current_player;
          _isGameOver = true;
        } else {
          _current_player = _current_player == 'X' ? '0' : 'X';
        }
      });
    }
  }

  void _resetGame() {
    setState(() {
      _board = List.generate(9, (index) => '');
      _current_player = 'X';
      _winner = '';
      _isGameOver = false;
    });
  }

  bool _checkWinner() {
    final winningCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];

    for (var combination in winningCombinations) {
      if (_board[combination[0]] == _board[combination[1]] &&
          _board[combination[1]] == _board[combination[2]] &&
          _board[combination[0]] != "") {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TIC TAC TOE"),
        actions: [
          IconButton(
              onPressed: () {
                _resetGame();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: Column(
        children: [
          if (_winner != "")
            Text(
              "Player ${_winner} Wins",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          if (!_board.contains("") && !_isGameOver)
            Text(
              "Game Draw",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          Text(
            "Current Player : ${_current_player}",
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _makeMove(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        _board[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
