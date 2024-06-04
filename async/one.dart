import 'dart:io';

void main()
{
   final path = Directory.current.path+"/async/notes.txt";
   File file = new File(path);
   print("Before FIle Calling");
   Future<String> future = file.readAsString();
   future.then((value)=>print(value))
   .catchError((err)=>print("Errror is $err"));
   print("Main Ends");
}