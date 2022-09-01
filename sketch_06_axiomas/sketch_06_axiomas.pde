LineaRecta l1, l2;

void setup () {
  //fullScreen();
  size(512, 512);
  l1 = new LineaRecta();
  l2 = new LineaRecta();
  l2.m = -5;
  l2.b = 200;
}

void draw () {
  background(255);
  translate(width/2, height/2);
  ejes();
  l1.Dibujar();
  l2.Dibujar();
  PVector p = Interseccion(l1,l2);
  circle(p.x, p.y, 20);
}

void ejes () {
  float max = 1000;
  stroke(255,0,0);
  line(-max, 0, max,0);
  stroke(0,255,0);
  line(0, -max, 0, max);
}
