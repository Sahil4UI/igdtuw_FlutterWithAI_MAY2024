// .. -> cascade notation

// class Student{
//   int? roll;
//   String? name;
//   String? contact;
// }
void main()
{
   String x = "   hey Dart!!!!";
  // Immutable
  //  substring + UpperCase
  print(x..substring(1,6).toUpperCase());
  // Student obj = new Student();
  // obj.contact = "9876543210";
  // obj.name="ravi";
  // obj.roll = 5;
  // obj..contact = "9876543210"
  // ..name = "Ravi" 
  // ..roll = 5;

  List<int> x2 = [1,2,3,4,5];
  // mutable
  x2..add(50)
  ..add(60)
  ..add(20);
  print(x);
}