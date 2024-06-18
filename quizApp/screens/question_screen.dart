import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../answer_button.dart';
import '../data/ques_ans.dart';
import '../quiz_notifer.dart';
import '../result.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    var ob = Provider.of<QuizNotifer>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quesAns[ob.currentQuesIndex].question,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ...quesAns[ob.currentQuesIndex].Ans.map((ans) {
              return AnswerButton(
                  onTapAnswer: () {
                    if (ob.currentQuesIndex < quesAns.length-1) {
                      ob.ChangeQA(ans);
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Result(last_ans: ans,),
                          ));
                    }
                  },
                  answer: ans);
            })
          ],
        ),
      ),
    );
  }
}
