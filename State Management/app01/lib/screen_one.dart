import 'package:flutter/material.dart';

import 'screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            onPressed: () async {
            counter =await Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> ScreenTwo(counter: counter,)));
              setState(() {
                
              });
            },
            child: const Icon(Icons.forward),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
