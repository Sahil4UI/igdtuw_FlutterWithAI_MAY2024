void main()
{
    // Set ->Data Collection,Cannot Contains Duplicate Elements
    // Set<int> set1 = {1};
    // Set<int> set2 = {5,5,5,6,6,6,7,7,7,8,8,8};
    // set1..add(2)
    // ..add(3)
    // ..add(4)
    // ..add(5)
    // ..add(6);
    // set->mutable
    // print(set1);
    // Set<int> set3 = new Set();
    // Set<int> set4 = {};
    // Set<int> set5 = Set();
    // set1.add(100);
    // print(set1);
    // print(set1.first);
    // print(set1.last);
    // print(set1.length);
    // print(set1.isEmpty);
    // union,intersection,diff
    // print(set1.union(set2));
    // print(set1.difference(set2));
    // print(set1.intersection(set2));
    Set<int> s1 = {1,3,5,7,2,4,6,8,9,10};
    // print(s1.containsAll({1,5}));
    // print(s1.elementAt(2));
    // print(s1.where((element) => element>5));
    // print(s1.skip(3));
    // iterator
    // print(s1.skipWhile((value) => value%2==0));
    // print(s1.take(4));
    print(s1.takeWhile((value) => value<5));


}