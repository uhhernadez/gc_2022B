LineaRecta linea;

void setup () {
  //fullScreen();
  size(512, 512);
  linea = new LineaRecta();
}

void draw () {
  background(255);
  translate(width/2, height/2);
  ejes();
  linea.Dibujar();
  linea.m += 0.001;
  linea.b += 0.1;
}

void ejes () {
  float max = 1000;
  stroke(255,0,0);
  line(-max, 0, max,0);
  stroke(0,255,0);
  line(0, -max, 0, max);
}
