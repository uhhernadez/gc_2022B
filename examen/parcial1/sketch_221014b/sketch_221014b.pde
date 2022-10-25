Pieza p1;
Pieza p2;
Pieza p3;

void setup () {
  size(512, 512);
  p1 = new Pieza();
  p2 = new Pieza();
  p3 = new Pieza();

}

void draw () {
  p1.Trasladar(new PVector(100,200));
  p2.Rotar(radians(-90));
  p2.Trasladar(new PVector(200, 260));
  p3.Rotar(radians(180));
  p3.Trasladar(new PVector(320, 260));

  p1.Dibujar();
  p2.Dibujar();
  p3.Dibujar();
  frameRate(0);
}
