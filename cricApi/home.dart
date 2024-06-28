import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/chatgpt_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final chatgptservice = ChatgptService();
  Map? matchDetails;
  var loading= false;

  Future<void> sendPrompt() async {
   setState(() {
     loading = true;
   });

   try{
      final details = await chatgptservice.getResponse("29d91883-fb69-4d90-8a0e-9c83f73828c8");
      setState(() {
        matchDetails = details;
      });
   }
   catch(e)
   {
     print(e);
   }
   finally{
    setState(() {
      loading = false;
    });
   }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sendPrompt();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: loading?
        Center(
          child: CircularProgressIndicator(),
        ):matchDetails ==null?
        Center(child:Text("No Match Data Retrieved")):
        Padding(padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Match : ${matchDetails!["data"]["name"]}"
              ),
                            Text(
                "Match : ${matchDetails!["data"]["matchType"]}",
              ),
               Text(
                "Match : ${matchDetails!["data"]["date"]}",
              )
            ],
          ),
        ),)

      )
    );
  }
}
