import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo({super.key, required this.counter});
  int counter;
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Screen Two"),
      ),
      body: Center(
        child:Column(children: [
          Text(widget.counter.toString(),
          style: TextStyle(fontSize: 40),),
          ElevatedButton(onPressed: (){
            Navigator.pop(context,widget.counter);
          }, child: Icon(Icons.arrow_back) ,),
        ],)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            widget.counter++;
          });
        },
        child:const Icon(Icons.add),
      ),
    );
  }
}