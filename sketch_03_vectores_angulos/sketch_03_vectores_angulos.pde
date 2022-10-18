PVector a;
void setup () {
  size(512, 512);
}

void draw() {
  translate(256, 256);
  background(0);
  a = PVector.fromAngle(radians(millis()));
  a.mult(100);
  dibujarVector(a, 0, 255, 0);
  textSize(64);
  text(str(millis()), -200, -200); 
}

void dibujarVector(PVector v, int r, int g, int b) {
  stroke(r,g,b);
  line(0, 0, v.x, v.y);
}
