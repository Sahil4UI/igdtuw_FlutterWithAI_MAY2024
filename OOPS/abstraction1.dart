abstract class A{
    void f1()
    {
        print("f1");
    }
    // abstract method
    void f2();
    void f3();
}
// 
class B extends A{
    // you have to override abstract methods of Abstract Class
    @override
    void f2()
    {

    }
    @override
    void f3()
    {

    }
}

void main()
{

}