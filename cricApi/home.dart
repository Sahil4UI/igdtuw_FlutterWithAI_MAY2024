import 'package:flutter/material.dart';
import 'package:flutter_application_1/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final chatgptservice = Services();
  Map? matchDetails;
  var loading= false;

  Future<void> sendPrompt() async {
   setState(() {
     loading = true;
   });

   try{
      final details = await chatgptservice.getID("Dhoni");
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
                "Player's Name : ${matchDetails!["data"]["name"]}"
              ),
                
               Text(
                "DOB: ${matchDetails!["data"]["dateOfBirth"]}",
              ),
                          Text(
                "Country ${matchDetails!["data"]["country"]}",
              ),
                        Image.network(matchDetails!["data"]["playerImg"])
            ],
          ),
        ),)

      )
    );
  }
}