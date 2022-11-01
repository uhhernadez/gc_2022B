Parabola p;
Elipse e;
void setup() {
  size(500,500);
  p = new Parabola(0.01, -50, 50);
  e = new Elipse(0.01, -10, 10, 20, 20);
}

void draw() {
  translate(250, 250);
  background(255);
  p.Dibujar();
  e.Dibujar();
}
