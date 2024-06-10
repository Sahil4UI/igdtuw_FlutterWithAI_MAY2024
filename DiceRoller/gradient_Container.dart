import 'package:flutter/material.dart';
import 'package:my_app01/styled_text.dart';

class GradientContainer extends StatefulWidget {
  // const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer(this.goToScreenTwo,this.myColors, {super.key});
  // final Color color1;
  // final Color color2;
  final List<Color> myColors;
  final Function goToScreenTwo;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // colors: [color1, color2],
          colors: widget.myColors,
        ),
      ),
      child: Center(
        child: StyledText(widget.goToScreenTwo,"Hey... Welcome to Flutter!"),
      ),
    );
  }
}
