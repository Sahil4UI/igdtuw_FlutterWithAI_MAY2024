import 'package:flutter/material.dart';
import 'package:quiz_app_01/data/ques_ans.dart';

class QuizNotifer extends ChangeNotifier{
  int currentQuesIndex = 0;

  List _userAnswer =[] ;
  
  ChangeQA(String ans)
  {
     _userAnswer.add([quesAns[currentQuesIndex].question,ans]);
     currentQuesIndex++;
     print(_userAnswer);
     notifyListeners();
  }
}