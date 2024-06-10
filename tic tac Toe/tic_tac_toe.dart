import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  var gridValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TIC TAC TOE",
        ),
        backgroundColor: Color.fromARGB(255, 120, 192, 255),
      ),
      body: Container(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10) ,
                  itemCount: gridValues.length ,
                  itemBuilder: (context,index)
                  {
                    return Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 151, 151)
                      ),
                      height: 50,
                      width: 50,
                      child: Center(child: Text(gridValues[index].toString(),
                      style: TextStyle(
                        fontSize: 30
                      ),)),
                    );
                  },
                ),  
        ),
    );
  }
}
