import 'dart:convert';
import 'package:http/http.dart' as http;


class ChatgptService{
  ChatgptService(this.apiKey);
  final String apiKey;

  Future<String> getResponse(String prompt) async
  {

     const String apiUrl = "https://api.openai.com/v1/chat/completions";

     final response =await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type':'application/json',
          'Authorization':'Bearer $apiKey',
        },
        body: jsonEncode(
          {
            'model':'gpt-3.5-turbo',
            "messages":[
              {"roll":"user",
              "content":prompt}
            ]
          }
        )
     );

     if (response.statusCode == 200)
     {
        final data = jsonDecode(response.body);
        return data["choices"][0]["message"]["content"].toString();
     }
     else{
        return "None";
     }

  }


}