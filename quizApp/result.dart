import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/ques_ans.dart';
import 'quiz_notifer.dart';

class Result extends StatelessWidget {
  Result({super.key,required this.last_ans});
  String last_ans;
  @override
  Widget build(BuildContext context) {
    var ob=Provider.of<QuizNotifer>(context);
    ob.userAnswer.add([quesAns[quesAns.length-1].question,last_ans]);
    return Scaffold(
      
      appBar: AppBar(title: Text("Result"),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total Questions : ${quesAns.length}",
              style: TextStyle(
                fontSize: 24
              ),),
              ElevatedButton(onPressed: (){
                ob.totalCorrect();
              }, child: Text("Calculate Result")),
              Text("Correct Ans : ${
                  ob.correctCount
              }")
            ],
          ),
        ),
      ),
    );
  }
}