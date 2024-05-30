
void main()
{
  //  map - key:value pair enclosed inside {} , 
  // keys cannot be duplicate
  Map marks = {"sahil":98,"Ravi":99};
  marks["shyam"] = 34;
  marks["aman"] = 14;

  print(marks);
  // marks.putIfAbsent("amit", () => 23);
  // marks.putIfAbsent("sahil", () => 23);
  // marks.addAll({"Ritu":0,"Neha":50});
  // print(marks);
  // marks.update("aman", (value) => 0);
  // print(marks);
  // marks.updateAll((key, value) => value = 50);
  // properties
  // print(marks.isNotEmpty);
  // print(marks.length);
  // how many key value pairs are there
  // print(marks.keys);
  // marks.clear();
  // print(marks);
  // print(marks.entries);
  // keys and values -> pair
  // print(marks.containsKey("aman"));
  // print(marks.containsValue(99));
  // marks["sahil"] = 100;
  // print(marks);
  // marks.remove("aman");
  // print(marks);
  // marks.removeWhere((key, value) => key=="aman");
  // marks.removeWhere((key, value) => value==99);
  // print(marks);



}