// 1 to N Even ODD
// 1 to N Cube
// 1 to N Square
import "dart:math";
final evenOdd = (num)=> num%2==0?"Even":"Odd";
final cube = (num)=> pow(num, 3);
final square  = (num)=> pow(num,2);
void loop(int n , Function fn)
{
  for (int i=1;i<=n;i++)
  {
      print(fn(i));
  }
  print("***********");
}
void main()
{
   loop(10,evenOdd);
   loop(10,cube);
   loop(10,square);
}




