
f1()
{
    print("F1 called");
    f2()
    {
      print("F2 called");
    }
    f3()
    {
      print("F3 called");
    }
    return [f2,f3];
}
void main()
{
   f1()[1]();
}
