Carrito carro;
float delta;
void setup() {
  size (512, 512);
  carro = new Carrito(100, 100);
  delta = 1.0; 
}

void draw() {
  background(145);
  translate(width/2, height/2);
  circle(0,0, 5);
  delta-= 0.001;
  //carro.EscalaLocal(1, delta);
  carro.EscalaLocal(delta, 1);
  carro.Dibujar();
}


void keyPressed() {
  if (key == CODED) {
    textSize(32);
    //  UP, DOWN, LEFT, RIGHT
    if (keyCode == UP) {
      text("UP", 400,400);
      carro.Adelante(5);
    } else if (keyCode == DOWN) {
      text("DOWN", 400,400);
      carro.Atras(5);
    } else if (keyCode == LEFT) {
      text("LEFT", 400,400);
      carro.RotacionLocal(radians(-1));
    } else if (keyCode == RIGHT) {
      text("RIGHT", 400,400);
      carro.RotacionLocal(radians(1));
    } 
  } 
}
