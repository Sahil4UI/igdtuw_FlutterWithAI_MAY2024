import 'dart:convert';
import 'package:http/http.dart' as http;


class ChatgptService{

  Future<Map> getResponse(String prompt) async
  {

     String apiUrl = "https://api.cricapi.com/v1/match_info?apikey=8a9ff01d-521c-490d-b826-b6b9e4266a59&id=29d91883-fb69-4d90-8a0e-9c83f73828c8&id=$prompt";

     final response = await http.get(Uri.parse(apiUrl));

     if (response.statusCode == 200)
     {
        final data = jsonDecode(response.body);
        return data;
     }
     else{
        throw Exception ("Error Occured");
     }

  }


}