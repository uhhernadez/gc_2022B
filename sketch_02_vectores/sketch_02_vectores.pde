PVector a;
void setup () {
  size(512, 512);
  a = new PVector (50, 50);
}

void draw() {
  translate(256, 256);
  circle(0,0,10);
  line(0,0, a.x, a.y);
}
