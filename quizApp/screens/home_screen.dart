
import 'package:flutter/material.dart';

import 'question_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Image.asset("assets/images/logo.png") ,
        title: const Text("QUIZ APP"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.account_circle))
        ],
        backgroundColor: Color.fromARGB(255, 238, 250, 238),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 141, 208, 239),
            Color.fromARGB(255, 251, 207, 207),
            Color.fromARGB(255, 202, 247, 202),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("QUIZ APP",
              style: TextStyle(
                fontSize: 34
              ),),
              ElevatedButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder:(context)=> const QuestionScreen()));
              }, child: Text("START!!!",
              style: TextStyle(
                fontSize: 23,
                color: Colors.black
              ),))
            ],
          ),
        ),
      ),
    );
  }
}