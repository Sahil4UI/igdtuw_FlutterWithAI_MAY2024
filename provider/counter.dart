
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_001/counter_provider.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
  //  var ob=Provider.of<CounterProvider>(context);
    return Scaffold(
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(builder: (context,proname,child)
            {
               return Text("${proname.counter}");
            }),
          
        ElevatedButton(onPressed: (){}, child: Text("Go to Page2"))],),
      ),

        floatingActionButton: 
        Consumer<CounterProvider>(builder: (context,proname,child)
          {
             return FloatingActionButton(onPressed: (){
              proname.changeValue();
             });
          },)      
    );
  }
}