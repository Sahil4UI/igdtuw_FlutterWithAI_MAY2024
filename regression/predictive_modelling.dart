import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

class PredictiveModelling extends StatefulWidget {
  const PredictiveModelling({super.key});

  @override
  State<PredictiveModelling> createState() => _PredictiveModellingState();
}

class _PredictiveModellingState extends State<PredictiveModelling> {
  var result = "Result to be Shown Here...";
  late tfl.Interpreter interpreter;

  @override
  void initState() {
    super.initState();
    loadModel();
  }

  TextEditingController textEditingController = TextEditingController();
  loadModel() async {
    interpreter = await tfl.Interpreter.fromAsset('assets/linear.tflite');
  }

  getPrediction() {
    int val = int.parse(textEditingController.text);

    // For ex: if input tensor shape [1,5] and type is float32
    var input = [val];

// if output tensor shape [1,2] and type is float32
    var output = List.filled(1, 0).reshape([1,1]);
    print(output);
// inference
    interpreter.run(input, output);
    setState(() {
          result = output[0][0].toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Regression"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(hintText: "Enter a Number ..."),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    getPrediction();
                  },
                  child: Text("Get Prediction")),
              SizedBox(
                height: 20,
              ),
              Text("$result")
            ],
          ),
        ),
      ),
    );
  }
}
