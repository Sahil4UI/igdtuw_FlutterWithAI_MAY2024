import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/chatgpt_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = TextEditingController();
  final chatgptservice = ChatgptService(
      "sk-proj-5neBJFXjOnF2nR8Y4C8eT3BlbkFJgaYhEaO4fLC4aQrWhW96");
  String response = "";

  Future<void> sendPrompt() async {
    final prompt = controller.text;
    if (prompt.isNotEmpty) {
      final res = await chatgptservice.getResponse(prompt);

      setState(() {
        response = res;
      });
      controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Enter Prompt : "),
              ),
              const SizedBox(
                height: 26,
              ),
              ElevatedButton(
                  onPressed: () {
                    sendPrompt();
                  },
                  child: const Text("Submit")),
              const SizedBox(
                height: 26,
              ),
              Text("Output : $response")
            ],
          ),
        ),
      ),
    );
  }
}
