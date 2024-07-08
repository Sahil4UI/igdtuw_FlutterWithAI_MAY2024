import 'package:uuid/uuid.dart';

class Products{
  String p_id;
  String p_name;
  double price;
  Products(this.p_name,this.price):p_id = Uuid().v4() ;
}