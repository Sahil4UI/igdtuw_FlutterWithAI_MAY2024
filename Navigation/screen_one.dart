import 'package:flutter/material.dart';
import 'package:my_app01/scree_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Page One"),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenTwo(),
                ),
              );
            },
            icon: Icon(Icons.forward),
            label: Text("Go Forward"),
          ),
        ],
      )),
    );
  }
}
