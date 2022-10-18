class Circulo {
  float x, y, d;
  int r, g, b;
  Circulo(float x_, float y_, float d_) {
    x = x_;
    y = y_;
    d = d_;
    r = (int)random(256);
    g = (int)random(256);
    b = (int)random(256);
  }
  void Dibujar() {
    fill(r,g,b);
    circle(x, y, d);
  }
}
