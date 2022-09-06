class Carrito {
  PVector centro;
  ArrayList<PVector> vertices;
  
  Carrito (float x, float y) {
    centro = new PVector(x, y);
    vertices = new ArrayList<PVector>();
    vertices.add(new PVector(60, 30));
    vertices.add(new PVector(-60, 30));
    vertices.add(new PVector(-60, -30));
    vertices.add(new PVector(60, -30));
  }
  
  void Dibujar () {
    beginShape();
    for (PVector v : vertices) {
      vertex(centro.x + v.x, centro.y +v.y);
    }
    endShape(CLOSE);
  }
  
  void Trasladar (float dx, float dy) {
    centro.add(new PVector(dx, dy));
  }
}
