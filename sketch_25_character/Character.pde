class Character {
  Sprite walk;
  Sprite idle;
  int state; // { 0 - idle, 1 - caminando}
  float dir;
  PVector pos;
  
  
  Character(String type) {
    walk = new Sprite(type+"/Walk_", 10, 0.2);
    idle = new Sprite(type+"/Idle_", 10, 0.2);
    state = 0;
    pos = new PVector(0,0);
    dir = 1;
  }

  void Draw() {
    pushMatrix();
      translate(pos.x, pos.y);
      scale(dir, 1);
      switch(state) {
        case 0: idle.Draw(); break;
        case 1: walk.Draw(); break;
        default: println("Hay un error en la animación"); break;
      }
    popMatrix();
  }
  
  void Walk() {
    state = 1;
  }
  
  void Walk(float x, float y) {
    state = 1;
    if(x > 0) {
      dir = 1;
    } else {
      dir = -1;
    }
    pos.add(x,y);
  }
  
  void Idle() {
    state = 0;
  }
} 
