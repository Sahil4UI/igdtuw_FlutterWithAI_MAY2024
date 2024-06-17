
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_01/quiz_notifer.dart';
import 'package:quiz_app_01/screens/home_screen.dart';

void main()
{
   runApp(
    MultiProvider(providers: 
    [ChangeNotifierProvider<QuizNotifer>(create: (_)=>QuizNotifer())],
    child: const MaterialApp(
      home: HomeScreen(),
    ),
    )
   );
}