class Character {
  Sprite walk;
  Sprite idle;
  int state; // { 0 - idle, 1 - caminando}
    
  Character(String type) {
    walk = new Sprite(type+"/Walk_", 10, 0.2);
    idle = new Sprite(type+"/Idle_", 10, 0.2);
    state = 0;
  }

  void Draw() {
    switch(state) {
      case 0: idle.Draw(); break;
      case 1: walk.Draw(); break;
      default: println("Hay un error en la animación"); break;
    }
  }
  
  void Walk() {
    state = 1;
  }
  
  void Idle() {
    state = 0;
  }
} 
