import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late tfl.Interpreter interpreter;
  var result = "";
  var mean = [
    5.477707,
    195.318471,
    104.869427,
    2990.251592,
    15.559236,
    75.898089,
    0.624204,
    0.178344,
    0.197452
  ];
  var std = [
    1.699788,
    104.331589,
    38.096214,
    843.898596,
    2.789230,
    3.675642,
    0.485101,
    0.383413,
    0.398712
  ];

  @override
  void initState() {
    super.initState();
    loadModel();
  }

  loadModel() async {
    interpreter = await tfl.Interpreter.fromAsset('assets/linear.tflite');
  }

  performAction() {
    double cylinder = double.parse(cylinderController.text);
    double displacement = double.parse(displacementController.text);
    double horsePower = double.parse(horsePowerController.text);
    double weight = double.parse(weightController.text);
    double acceleration = double.parse(accelarationController.text);
    double modelYear = double.parse(modelController.text);
    double originA = 1.0;
    double originB = 0.0;
    double originC = 0.0;

    if (originValue == "USA") {
      originA = 1.0;
      originB = 0.0;
      originC = 0.0;
    } else if (originValue == "Europe") {
      originA = 0.0;
      originB = 1.0;
      originC = 0.0;
    } else if (originValue == "Japan") {
      originA = 0.0;
      originB = 0.0;
      originC = 1.0;
    }
// normalization
    cylinder = (cylinder - mean[0]) / std[0];
    displacement = (displacement - mean[1]) / std[1];
    horsePower = (horsePower - mean[2]) / std[2];
    weight = (weight - mean[3]) / std[3];
    acceleration = (acceleration - mean[4]) / std[4];
    modelYear = (modelYear - mean[5]) / std[5];
    originA = (originA - mean[6]) / std[6];
    originB = (originB - mean[7]) / std[7];
    originC = (originC - mean[8]) / std[8];

    var input = [
      cylinder,
      displacement,
      horsePower,
      weight,
      acceleration,
      modelYear,
      originA,
      originB,
      originC,
    ];

// if output tensor shape [1,2] and type is float32
    var output = List.filled(1, 0).reshape([1, 1]);

// inference
    interpreter.run(input, output);
    print(output);

    setState(() {
      result = output[0][0].toStringAsFixed(2);
    });
  }

  TextEditingController displacementController = TextEditingController();
  TextEditingController cylinderController = TextEditingController();
  TextEditingController horsePowerController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController accelarationController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController originController = TextEditingController();

  String originValue = "USA";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "MPG : $result",
                            style: const TextStyle(
                              fontSize: 26,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      color: Colors.blueAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 50, right: 50),
                            child: const Icon(
                              Icons.account_tree_outlined,
                              size: 100,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              controller: displacementController,
                              decoration: const InputDecoration(
                                hintText: "Displacement",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      color: Colors.red,
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: TextField(
                              controller: cylinderController,
                              decoration: const InputDecoration(
                                  hintText: "Cylinder",
                                  hintStyle: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 50, right: 50),
                            child: const Icon(
                              Icons.gas_meter,
                              size: 100,
                            ),
                          )
                        ],
                      ),
                    ),Container(
                      height: 150,
                      color: Color.fromARGB(255, 6, 192, 49),
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: TextField(
                              controller: horsePowerController,
                              decoration: const InputDecoration(
                                  hintText: "HP",
                                  hintStyle: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 50, right: 50),
                            child: const Icon(
                              Icons.h_plus_mobiledata,
                              size: 100,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      color: Colors.blueGrey,
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: TextField(
                              controller: weightController,
                              decoration: const InputDecoration(
                                  hintText: "Weight",
                                  hintStyle: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 50, right: 50),
                            child: const Icon(
                              Icons.monitor_weight_outlined,
                              size: 100,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      color: Colors.deepOrangeAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 50, right: 50),
                            child: const Icon(Icons.speed_outlined, size: 100),
                          ),
                          Expanded(
                            child: TextField(
                              controller: accelarationController,
                              decoration: const InputDecoration(
                                  hintText: "Acceleration",
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      color: const Color.fromARGB(255, 255, 63, 153),
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: TextField(
                              controller: modelController,
                              decoration: const InputDecoration(
                                  hintText: "Model Year",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 50, right: 50),
                            child: const Icon(
                              Icons.date_range,
                              size: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      color: Colors.brown,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 50, right: 50),
                            child: const Icon(
                              Icons.place,
                              size: 100,
                            ),
                          ),
                          DropdownButton(
                            value: originValue,
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                            items:
                                ["USA", "EUROPE", "JAPAN"].map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                originValue = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: performAction,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: const Text(
                          "Get",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
