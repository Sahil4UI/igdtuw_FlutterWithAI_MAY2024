
import 'package:uuid/uuid.dart';

class Products{
  String p_id;
  String p_name;
  String p_img;
  double price;

  Products(this.p_name,this.p_img,this.price):p_id = Uuid().v4();
}