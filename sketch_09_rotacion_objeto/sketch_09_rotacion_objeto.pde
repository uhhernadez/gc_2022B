Carrito carro;
float delta;
void setup() {
  size (512, 512);
  carro = new Carrito(200, 200);
  delta = 10;
}

void draw() {
  background(145);
  translate(width/2, height/2);
  carro.Dibujar();
  carro.RotarPVector(-radians(0.5));
}

void keyPressed() {
  if (key == CODED) {
    textSize(32);
    //  UP, DOWN, LEFT, RIGHT
    if (keyCode == UP) {
      text("UP", 400,400);
      carro.Trasladar(0, -delta);
    } else if (keyCode == DOWN) {
      text("DOWN", 400,400);
      carro.Trasladar(0, delta);
    } else if (keyCode == LEFT) {
      text("LEFT", 400,400);
      carro.Trasladar(-delta, 0);
    } else if (keyCode == RIGHT) {
      text("RIGHT", 400,400);
      carro.Trasladar(delta, 0);
    } 
  } 
}
