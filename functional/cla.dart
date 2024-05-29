// cla - command line arguments - terminal - -input
//  
void main(List<String> args)
{
    int res = 0;
    args.forEach((element) {
      res += int.parse(element);
    });
    print(res);
}

