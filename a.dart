
import 'dart:io';
void main()
{
    // int? x;
    // int? y;
    // print("Enter No1:");
    // readLineSync is used to accept input(String)
    // x = int.parse(stdin.readLineSync()!);
    // here ? and ! are used for null safety
    // ! - it will convert type to type?
    // print("Enter No2:");
    // y = int.parse(stdin.readLineSync()!);
    // print("x = $x and y = $y");
    // print(x);
    // print(y);
    // \n
    // stdout.write("x = "+x.toString()+"  y = "+y.toString());
    // stdout.write(y);
    // print("sum of $x and $y is ${x+y}");

    // if (x>y)
    // {
    //     print("$x is largest");
    // }
    // else{
    //   print("y is largest");
    // }
    int x = 3;
    switch(x)
    {
        case 1: {
          print("Mon");
        }
        case 2:{
          print("Tues");
        }
        case 3:{
          print("Wed");
        }
        case 4:{
          print("Thur");
        }
        case 5:{
          print("Fri");
        }
        case 6:{
          print("Sat");
        }
        case 7:{
          print("Sun");
        }
        default:{
          print("Out of Range");
        }
    }
}