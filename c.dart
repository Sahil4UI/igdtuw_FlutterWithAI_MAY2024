// Loop - WHy do we need loop? - 
import 'dart:io';

void main()
{
  //   for (int x=1;x<=5;x++)
  // {
  //     print(x);
  // }

  
  // String x = "Hello Dart!";
  // ignore: unused_local_variable
  // for (int i=0;i<x.length;i++)
  // {
  //    stdout.write(x[i]);
  // }
  int? x;
  print(x);

  print("Enter Choice: ");
  int choice;
  choice = int.parse(stdin.readLineSync().toString());
  switch(choice)
  {
    case 1: print("Pizza");
            continue OFFER;
    case 2: print("Coffee");
    OFFER:
    case 3: print("Cold Drink");
            continue OFFER1;
    OFFER1:        
    case 4: print("Burger");
    default:print("Invalid");
  }
  print(choice);
}