import 'package:flutter/material.dart';
import 'package:my_app01/dice_roller.dart';

import 'gradient_Container.dart';

class ScreenChange extends StatefulWidget {
  const ScreenChange({super.key});

  @override
  State<ScreenChange> createState() => _ScreenChangeState();
}

class _ScreenChangeState extends State<ScreenChange> {
  var currentScreen = "home";

  void changeScreen()
  {
    // app rebuild-> build method ->rebuilt
        setState(() {
                currentScreen = "screen-two";
        });
  }

  @override
  Widget build(BuildContext context) {
    if (currentScreen == "home")
    {
         return  GradientContainer(changeScreen,[Colors.cyan, Colors.pink, Colors.orange]);
    }
    return const DiceRoller();
  }
}