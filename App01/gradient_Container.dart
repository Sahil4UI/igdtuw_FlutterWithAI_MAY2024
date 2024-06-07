import 'package:flutter/material.dart';
import 'package:my_app01/styled_text.dart';

class GradientContainer extends StatefulWidget {
  // const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer(this.myColors, {super.key});
  // final Color color1;
  // final Color color2;
  final List<Color> myColors;

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
      child: const Center(
        child: StyledText("Hey... Welcome to Flutter!"),
      ),
    );
  }
}
