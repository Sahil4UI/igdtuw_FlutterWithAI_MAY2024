import 'dart:convert';
import 'package:http/http.dart' as http;


class Services{

  Future<Map> getResponse(String id) async
  {

     String apiUrl = "https://api.cricapi.com/v1/players_info?apikey=a7233f4d-1f47-461a-92d5-899b8409091d&id=$id";

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


  Future<Map> getID(String name) async
  {

     String apiUrl = "https://api.cricapi.com/v1/players?apikey=a7233f4d-1f47-461a-92d5-899b8409091d&offset=0&search=$name";
     final Map data ;
     final response = await http.get(Uri.parse(apiUrl));

     if (response.statusCode == 200)
     {
        data = jsonDecode(response.body);
       
     }
     else{
        throw Exception ("Error Occured");
     }

     print(data["data"][0]["id"].toString());


     return getResponse(data["data"][0]["id"].toString());
  }






}