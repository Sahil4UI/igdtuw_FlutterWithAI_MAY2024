import 'dart:io';

import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List gridValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List colorsList = [Colors.tealAccent,
  Colors.tealAccent,
  Colors.tealAccent,
  Colors.tealAccent,
  Colors.tealAccent,
  Colors.tealAccent,
  Colors.tealAccent,
  Colors.tealAccent,
  Colors.tealAccent];
  List LeftValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List winnings = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];
  var playerChoice = "X";
  var cpuChoice = "0";
  var isClicked = 0;
  String winner = "";

  winnerCheck(choice) {
    winnings.forEach((value) {
      if (gridValues[value[0]] == choice &&
          gridValues[value[1]] == choice &&
          gridValues[value[2]] == choice) {
        print("$choice is the Winner");
        winner = choice;
      }
      else if (LeftValues.isEmpty)
      {
          winner = "draw";
      }
    });
  }

  cpuMove() {
    LeftValues.shuffle();
    var value = LeftValues[0];
    // print("CPU is THinking...");
    // sleep(Duration(seconds: 3));
    colorsList[gridValues.indexOf(value)] = Color.fromARGB(255, 226, 140, 134);
    gridValues[gridValues.indexOf(value)] = cpuChoice;

    LeftValues.remove(value);
    winnerCheck(cpuChoice);
    // print(value);
  }

  playerMove(index) {
    //  print("Index value : ${gridValues[index]}");
    // print("Index value : ${gridValues[index].runtimeType}");
    colorsList[index]=Color.fromARGB(255, 237, 223, 178);
    LeftValues.remove(gridValues[index]);
    gridValues[index] = playerChoice;
    winnerCheck(playerChoice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TIC TAC TOE",
        ),
        backgroundColor: Color.fromARGB(255, 120, 192, 255),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
                itemCount: gridValues.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: (winner.isEmpty)?() {
                      setState(() {
                        if ((gridValues[index] == playerChoice) ||
                            (gridValues[index] == cpuChoice)) {
                        } else {
                          playerMove(index);
                          if (LeftValues.isNotEmpty)
                          {
                              cpuMove();

                          }
                        }
                      });
                      
                    }:(){},
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(colorsList[index]),
                    ),
                    child: Center(
                      child: Text(
                        gridValues[index].toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  );
                },
              ),
          ),
          SizedBox(
            height: 300
            ,child: Text((winner!="draw")?"Hey Winner is $winner ":"GAME DRAW!!!",
          style: TextStyle(
            fontSize: 30
          ),))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        
      },child: Icon(Icons.restart_alt),),
      
    );
  }
}
