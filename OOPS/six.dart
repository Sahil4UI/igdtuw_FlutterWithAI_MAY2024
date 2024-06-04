class Account{
  // reference variables
  // instance variables
  late int? id;
  late String? name;
  late int? blc;
  void roi()
  {
    print("4% ROI");
  }
  // un named constructor
  Account(this.id,this.name,this.blc);
// toString automatically gets called when printing object
  @override
  String toString()
  {
      return "id = $id ,name = $name , blc = $blc";
  }
}

class SavingAccount extends Account{
  @override
  // overriding - polymorphism
  void roi() {
      print("ROI is 5.8%");
  }

  void doorToDoor()
  {
    print("Door to Door Cash Collection Facility available");
  }

  SavingAccount(id,name,blc):super(id,name,blc);
}

class CurrentAccount extends Account{
  int odLimit = 2000 ;
  @override
  // overriding - polymorphism
  void roi() {
      print("ROI Chargable : 6%");
  }

  void transLimit()
  {
     print("Limit : 1000");
  }

  CurrentAccount(id,name,blc):super(id,name,blc);
}

void commonCaller(Account account)
{
    if (account is SavingAccount)
    {
      // downcasting
        SavingAccount obj = account;
        obj.doorToDoor();
        obj.roi();
        print(obj);
    }
    else if (account is CurrentAccount)
    {
        CurrentAccount obj = account;
        obj.transLimit();
        obj.roi();
        print(obj.odLimit);
        print(obj);
    }
    print("**********");
}
void main()
{
  // Account acc = new SavingAccount(101,"rahul", 5000);
  // upcasting
  // if B is upcasted to A , then you can only use properties defined in A
   commonCaller(new SavingAccount(101,"Ram",34000));
   commonCaller(new CurrentAccount(102,"Shyam",14000));
}
