class Account{
  late int? id;
  late String? name;
  late double? blc;
// What is Constructor
// constructor is defined with class name
// constructor do not store any logic, it is initializer
// it is called automatically at the time of object Creation
// unnamed
  Account(){
    print("Default called");
  }
  // named constructor
  Account.c1(id,name,blc)
  {
      this.id = id;
      this.name = name;
      this.blc = blc;
  }

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
    var account = Account.c1(101,"Anjali",45000.0); 
    account.show();

    var account1 = Account.c1(102,"Pooja",95000.0); 
    account1.show();
}