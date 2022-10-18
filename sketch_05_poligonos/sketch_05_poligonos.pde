Trapecio t;
void setup () {
  size(512, 512);
//  t = new Trapecio();
  t = new Trapecio( 100, 100, 200, 30);
}

void draw () {
  fill(0, 255, 0);
  t.Dibujar();
}
