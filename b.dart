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
  // OUTER:
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
  
  // for (int i=1;i<=10;i++)
  // {
  //   if(i%3==0)
  //   {
  //     continue;
  //   }
  //   print(i);
  // }

// Generic List
  // List<String?> x = ["hey","hi","hello","bye",null];

// for In Loop
// var  - dynamic
  // for (var i in x)
  // {
  //    print(i);
  // }
    // List x = [1,2,3,4,5,6,7,8,9,10];
  // for Each Loop
    // x.forEach((element) { print(element); });

    // int x = 1;
    // while (x<=5)
    // {
    //   print(x);
    //   x++;
    // }

  int x = 1;
    do
    {
      print(x);
      x++;
    }while (x<=5);

}