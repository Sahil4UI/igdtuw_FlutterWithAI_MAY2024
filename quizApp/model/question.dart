

class Question {
  late String question;
  late List<String> answer;
  late List<String> Ans;
  
  Question(question,answer)
  {
      this.question = question;
      this.answer = answer;
      this.Ans = List.from(answer);
      this.Ans.shuffle();
  }
  


   
}