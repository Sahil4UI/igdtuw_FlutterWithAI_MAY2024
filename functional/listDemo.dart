void main()
{
   List<int> x = [1,2,3,54];
   x.add(90);
   x.addAll([-20,3,-30,90,3]);
    x.add(-1000);
    x.insert(0,10000);
    x.insertAll(0,[0,-2,-3]);
  //  remove by value
  //  x.remove(54);
  // x.removeAt(0);
  // x.removeLast();//last value
  // x.removeRange(0,3);
  // x.removeWhere((element) => element<0);

  // ending n-1
  //  print(x);
  //  print(x.indexOf(3));
  //  print(x.lastIndexOf(90));
  // print(x.indexOf(3,3));
  // -1 means value not found
  // x.clear();

// update
  x[0] = 50;
  print(x);
  print("Reverse : ${x.reversed}");
  // x.sort();
  // print("Asc : $x");
  x.sort((first,second)=>second-first);
  print("Desc : $x");

   
}