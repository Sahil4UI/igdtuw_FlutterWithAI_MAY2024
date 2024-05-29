// Statically Typed
// int add(int x,int y)
// {
//     return x+y;
// }
// dynamically Typed
add(var x, var y)
{
  return x+y;
}

void main()
{
  var a=  add("12","23");
  print(a);
}