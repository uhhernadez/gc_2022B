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
  if (key == CODED) {
    //  UP, DOWN, LEFT, RIGHT
    if (keyCode == UP) {
      
    } else if (keyCode == DOWN) {
      
    } else if (keyCode == LEFT) {
      
    } else if (keyCode == RIGHT) {
      
    } 
  } 
}

void keyReleased() {
  dog.Idle();
}
