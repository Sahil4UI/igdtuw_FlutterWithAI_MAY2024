class Account{
  int? id;
  String? _name;
  double? _blc;
  // get ID=> id;
  get name{
    return _name;
  }
  get blc => _blc;

  set setId (int id)=> {this.id=id};
  // Account(){
  //   print("Default called");
  // }
  Account(this._id,this._name,this._blc);
  showDetails()
  {
     print("id : $_id , name : $_name , blc : $_blc");
  }
  roi()
  {
     print("ROI is 5-6%");
  }

}

class SavingAccount extends Account{
    @override
   roi()
   {
    print("ROI is 6.5%");
   }
// super can be used with cons along with : 
   SavingAccount(id,name,blc) : super(id, name, blc);
}


void main()
{
    var account = SavingAccount(101,"Anjali",45000.0); 
    account.showDetails();
    account.roi();
    
    var account1 = SavingAccount(102,"Pooja",95000.0); 
    account1.showDetails();
    account.roi();

}