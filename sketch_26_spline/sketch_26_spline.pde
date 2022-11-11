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

void mouseClicked() {
  PVector medio = new PVector(mouseX-width/2, mouseY-height/2);
  s.Calcular(new PVector(-200,0), medio, new PVector(200, 0));
}
