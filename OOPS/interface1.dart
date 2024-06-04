class Player extends PowerUp{
  void run(){}
  void jump(){}
  void punch(){}
}

class PowerUp{
  void highJump(){}
  void bigSize(){}
  void strongPunch(){}
}

// class SuperMario implements Player , PowerUp{
class SuperMario implements Player{
  @override
  void jump() {
    print("Super MARIO Jumps");
  }

  @override
  void punch() {
    // TODO: implement punch
    print("Super MARIO punch");

  }

  @override
  void run() {
      print("Super MARIO runs");
  }
  
  @override
  void bigSize() {
    // TODO: implement bigSize
  }
  
  @override
  void highJump() {
    // TODO: implement highJump
  }
  
  @override
  void strongPunch() {
    // TODO: implement strongPunch
  }
  
}

