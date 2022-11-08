Character cat;
Character dog;
void setup() {
  size(512,512);
  cat = new Character("cat");
  dog = new Character("dog");
}

void draw() {
  background(125); 
  translate(width/2, height/2);
  dog.Draw();
}

void keyPressed() {
  float dt = 4;
  if (key == CODED) {
    //  UP, DOWN, LEFT, RIGHT
    if (keyCode == UP) {
      dog.Walk(0, -dt);
    }
    if (keyCode == DOWN) {
      dog.Walk(0, dt);
    }
    if (keyCode == LEFT) {
      dog.Walk(-dt, 0);
    }
    if (keyCode == RIGHT) {
      dog.Walk(dt, 0);
    } 
  } 
  if (keyCode == 32) {
      println("Barra");
  }
}

void keyReleased() {
  dog.Idle();
}
