class Punto2D {
  // Parámetros
  float x;
  float y;
  // Constructor
  Punto2D() {
    x = 0;
    y = 0;
  }
  // Constructor asiganción
  Punto2D(float x, float y) {
    this.x = x;
    this.y = y;
  }
  // Constructor copia
  Punto2D(Punto2D p) {
    x = p.x;
    y = p.y;
  }
  
  void Dibujar() {
    fill(153,89,27);
    circle(x, y, 10);
  }
  
  void Dibujar(float diametro) {
    fill(153,89,27);
    circle(x, y, diametro);
  }
  
}
