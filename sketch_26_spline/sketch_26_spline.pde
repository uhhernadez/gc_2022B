Spline s;

void setup() {
  size(500, 500);
  s = new Spline(0.1);
  s.Calcular(new PVector(-200,0), new PVector(0,-200), new PVector(200, 0));
}

void draw() {
  background(255);
  translate(width/2, height/2);
  s.Dibujar();
}
