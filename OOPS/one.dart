class Account{
  late int? id;
  late String? name;
  late double? blc;
  show()
  {
     print("id : $id , name : $name , blc : $blc");
  }
}
void main()
{
  // object
    // Account account = new Account(); 
    // Account account = Account(); 
    var account = Account(); 
    account..id = 12
    ..name = "ravi"
    ..blc = 25000
    ..show();

    var account1 = Account(); 
    account..id = 13
    ..name = "ram"
    ..blc = 95000
    ..show();
}