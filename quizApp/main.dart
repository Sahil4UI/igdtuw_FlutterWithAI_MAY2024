
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'quiz_notifer.dart';
import 'screens/home_screen.dart';

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