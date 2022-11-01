Bezier bezier;
PVector p0, p1, p2, p3;
void setup() {
  size(512, 512);
  p0 = new PVector(-30, -80);
  //p1 = new PVector(200*cos(2*PI*0.001*millis()), 200*sin(2*PI*0.001*millis()));
  p1 = new PVector(-60, -80);
  p2 = new PVector(250, 200);
  p3 = new PVector(200, 200);
}

void draw() {
  background(130);
  translate(width/2, height/2);
  bezier = new Bezier(p0, p1, p2, p3);
  bezier.Dibujar();
  line(p0.x, p0.y, p1.x, p1.y);
  line(p2.x, p2.y, p3.x, p3.y);
  circle(p0.x, p0.y, 10);
  circle(p1.x, p1.y, 10);
  circle(p2.x, p2.y, 10);
  circle(p3.x, p3.y, 10);
}
