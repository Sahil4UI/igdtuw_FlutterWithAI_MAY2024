// Global;
// int count = 0;
Function init(){
  int count=0;
  int countDown()
  {
    // local variable
    // int count = 0;
    count++;
    return count; 
  }
  return countDown;
}
// Closure -> function+lexical scope(variable)
void main()
{
    Function fn = init();
    print(fn());
    print(fn());
    print(fn());
    print(fn());
    print(fn());
    print(fn());
}