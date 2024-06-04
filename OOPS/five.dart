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



void main()
{
    SavingAccount acc = new SavingAccount(1,"Rahul",45000);
    print(acc);
    acc.doorToDoor();
    acc.roi();
    print("***********");
    SavingAccount acc1 = new SavingAccount(2,"Ram",75000);
    acc1.doorToDoor();
    acc1.roi();
    print(acc1);
    print("***********");
    CurrentAccount acc2 = new CurrentAccount(3,"Mansi",34000);
    print(acc2);
    print(acc2.odLimit);
    acc2.roi();
    print("***********");

}
