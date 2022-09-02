class Circulo {
  PVector c;
  float r;
  
  Circulo () {
    c = new PVector();
    r = 20;
  }
  
  void Dibujar () {
    circle(c.x, c.y, 2*r);
  }
  
  void Trasladar (PVector d) {
    c.add(d);
   // c = PVector.add(c, d);
  }
  
  void Trasladar (float dx, float dy) {
    /*
    c.x = c.x + dx;
    c.y = c.y + dy;
    
    c.x += dx;
    c.y += dy;
    */
    c.add(new PVector(dx, dy));
  }
  
}
