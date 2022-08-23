PVector a, b;
void setup () {
  size(512, 512);
  a = new PVector (50, 50);
  b = new PVector (60, -40);
}

void draw() {
  translate(256, 256);
  circle(0,0,10);
  dibujarVector(a, 255, 0, 0);
  dibujarVector(b, 0, 255, 0);
  PVector c = PVector.add(a,b);
  dibujarVector(c.mult((float)second()/59.0), 0, 0, 255);
}

void dibujarVector(PVector v, int r, int g, int b) {
  stroke(r,g,b);
  line(0, 0, v.x, v.y);
}
