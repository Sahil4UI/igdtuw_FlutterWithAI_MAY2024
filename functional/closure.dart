Map<String,Function>  Math()
{
    int n = 1;
    final Function f1 = ()=> n+10;
    final Function f2 = ()=> n+20;
    return {"f1":f1,"f2":f2};
}
// closure=> function+lexical scope
void main()
{
  Map<String,Function> map =  Math();
  print(map);
  // Bang Operator - ! not null (null check)
  // print(map["f3"]!());
  // closure
}