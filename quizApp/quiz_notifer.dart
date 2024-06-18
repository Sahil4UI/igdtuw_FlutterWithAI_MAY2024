import 'package:flutter/material.dart';

import 'data/ques_ans.dart';

class QuizNotifer extends ChangeNotifier{
  int currentQuesIndex = 0;

  List userAnswer =[] ;
  int correctCount = 0;
  ChangeQA(String ans)
  {
     userAnswer.add([quesAns[currentQuesIndex].question,ans]);
     currentQuesIndex++;
     print(userAnswer);
     notifyListeners();
  }

  totalCorrect(){
    print(userAnswer);
    for (int i=0;i<userAnswer.length;i++)
    {
        if (userAnswer[i][1]==quesAns[i].answer[0])
        {
          print(":hey");
            correctCount++;
        }
    }
            notifyListeners();
            return correctCount;

  }
}