

import 'dart:ffi';

void main()
{
    // List<int> x= [100,230,45,810,345,56];
    // print(x);
    // x.shuffle();
    // print(x);
    // x.where((element)=>element>40).forEach((element)=>print(element));
    // Iterable b = x.where((element)=>element>40);
    // bool r = b.every((element) => element>40);
    // print(r);
    // print(b);
    // iterable means which can be iterated through ForEach Loop
    // bool res = x.every((element) => element>40);
    // print(res);

  // List<int> list= [90,34,56,87,23,890];
  // reference copy
  // List<int> list1 = list;
  // list.remove(90);
  // print(list);
  // print(list1);

  // List<int> list2 = [];
  // list.forEach((element) {
  //   list2.add(element);
  //  });
  
  // list.remove(90);
  // print(list);
  // print(list2);

  // List<int> list1= [90,34,56,87,23,890];
  // spread operator ...
  // List<int> list2 = [...list1];
  // // List list3 = [list1];
  // list1.remove(34);
  // print(list1);
  // print(list2);

  // List<int> a1 = [1,2,3,4];
  // List<int> a2 = [5,6,7,8];
  // List? z;
  // null aware spread operator -> it only producs value if not null

  // z = [12,23,45,56];
  // List<int> a3 = [...a1,...a2,...?z];
  // print(a3);

  bool active = false;

  active = true;
  List<int> list = [10,20,30,40,1000, if (active) 500];
  print(list);





}