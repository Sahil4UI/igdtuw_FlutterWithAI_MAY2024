import 'package:flutter/material.dart';
import 'package:tic_tac_toe/tic_tac_toe.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.pinkAccent],
            begin: Alignment.topLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.grid_3x3,
                size: 400,
              ),
              Text(
                "TIC TAC TOE",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return TicTacToe();
                      },
                    ));
                  },
                  child: Text(
                    "START GAME",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
