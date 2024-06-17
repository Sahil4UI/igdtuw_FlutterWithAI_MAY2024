
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_01/answer_button.dart';
import 'package:quiz_app_01/data/ques_ans.dart';
import 'package:quiz_app_01/quiz_notifer.dart';
import 'package:quiz_app_01/result.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  
  @override
  Widget build(BuildContext context) {
    var ob=Provider.of<QuizNotifer>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(quesAns[ob.currentQuesIndex].question,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
          ...quesAns[ob.currentQuesIndex].answer.map((ans)
          {
             return AnswerButton(onTapAnswer:(){
              
               (ob.currentQuesIndex<quesAns.length-1)?ob.ChangeQA(ans):
              Navigator.push(
                context , 
                MaterialPageRoute(builder: (_)=>Result(),),
              );

             }, answer: ans);
          })
        ],),
      ),
    );
  }
}