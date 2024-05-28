// import 'dart:io';

void main()
{
  // var x = 20;
  // block
  // Statically Typed
  // int a = 5;
  //  Dynamically Typed
  // type inference
  // null safety -> null aware
  // int? x;
  // print(x);
  // var x = 12;
  // var x = 12.87;
  // var x = true;
  // print(x.runtimeType);
  // String? x;
  // print(x);
  // int x = 20;
  // String d = x.toString();
  // print(d.runtimeType);
  // parse -  to change
  // int c = int.parse("100");
  // print(c.runtimeType);
  // ? - nullable
  // var y = double.parse("2345.345");
  // var y = bool.parse("true");
  // int x,y;
  // print("Enter value of x : ");
  // x = int.parse(stdin.readLineSync()!);
  // print("Enter value of y: ");
  // y = int.parse(stdin.readLineSync()!);
  // print("the sum of $x and $y is ${x+y}");

  // label
  OUTER:
  // for (int i=1;i<=10;i++)
  // {
    //  print(i);
    // stdout.write(i);
    // stdout.writeln(i);
    // break & continue
  //   for (int j=1;j<=10;j++)
  //   {
  //     if (j==3)
  //     {
  //       break OUTER;
  //     }
  //       print("i : $i and j => $j");
  //   }
  // }
  
  for (int i=1;i<=10;i++)
  {
    if(i%3==0)
    {
      continue;
    }
    print(i);
  }

}