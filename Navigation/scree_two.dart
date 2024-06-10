import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
        children: [
          Text("Page Two"),
          ElevatedButton.icon(
            onPressed: () {
                Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
            label: Text("Go Backward"),
          ),
        ],
      )),
    );
  }
}
