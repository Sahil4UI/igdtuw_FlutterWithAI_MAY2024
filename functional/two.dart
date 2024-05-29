// positional parameter - optional parameter

// int adder([int x=0,int y=0,int z=0]){

//     return x+y+z;
// }

// parameters - named
int adder({ required int  x ,int y=0,int z=0})
{
    return x+y+z;
}
void main()
{
  print(adder(x:20,y:34));
}