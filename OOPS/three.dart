class Account{
  int? _id;
  String? _name;
  double? _blc;
// What is Constructor
// constructor is defined with class name
// constructor do not store any logic, it is initializer
// it is called automatically at the time of object Creation
// unnamed

// polymorphism - poly(many) 
//, morph(forms)->overloading,overridinbg
  Account(){
    print("Default called");
  }
  // named constructor
  Account.c1(id,name,blc)
  {
      this._id = id;
      this._name = name;
      this._blc = blc;
  }

  show()
  {
     print("id : $_id , name : $_name , blc : $_blc");
  }
}
void main()
{
  // object
    // Account account = new Account(); 
    // Account account = Account(); 
    var account = Account.c1(101,"Anjali",45000.0); 
    account._blc=23;
    account.show();
    
    var account1 = Account.c1(102,"Pooja",95000.0); 
    account1.show();
}