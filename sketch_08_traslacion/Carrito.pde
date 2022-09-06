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
    circle(centro.x, centro.y,10);
    line(0,0, centro.x, centro.y);
  }
  
  void KeyPressed() {
  
  }
  
  void Trasladar (float dx, float dy) {
    centro.add(new PVector(dx, dy));
  }
  
  void Rotar (float theta) {
    float x = centro.x * cos(theta) + centro.y * sin(theta);
    float y = -centro.x * sin(theta) + centro.y * cos(theta);
    centro.set(x, y);
    //centro.x = x;
    //centro.y = y;
  }
}
