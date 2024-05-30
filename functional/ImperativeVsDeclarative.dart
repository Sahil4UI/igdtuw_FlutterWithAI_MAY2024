void main()
{
  List<int> list = [1,2,3,4,5,6,7,8,9,10];
  // Imperative
  // int res = 0;
  // for (int i=0;i<list.length;i++)
  // {
  //   res+=list[i];
  // }
  // print(res);
  // print("**********************");
  // Declarative 
  // int res1 = list.fold(0,(x,y)=>x+y);
  int res1 = list.reduce((x,y)=>x+y);
  print(res1);
}