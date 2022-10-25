class Pieza {
  ArrayList<PVector> vertices;
  
  Pieza () {
    vertices = new ArrayList<PVector>();
    vertices.add(new PVector(0,0));
    vertices.add(new PVector(20,0));
    vertices.add(new PVector(40,0));
    vertices.add(new PVector(60,0));
    vertices.add(new PVector(60,20));
    vertices.add(new PVector(40,40));
    vertices.add(new PVector(20,40));
    vertices.add(new PVector(0,20));
  }
  
  void  Dibujar() {
    // P1P4
    Linea(vertices.get(0), vertices.get(3));
    // P8P5
    Linea(vertices.get(7), vertices.get(4));
    // P1P8
    Linea(vertices.get(0), vertices.get(7));
    // P2P7
    Linea(vertices.get(1), vertices.get(6));
    // P4P5
    Linea(vertices.get(3), vertices.get(4));
    // P7P6
    Linea(vertices.get(6), vertices.get(5));
    // P3P6
    Linea(vertices.get(2), vertices.get(5));
  }
  
  void Linea(PVector a, PVector b) {
    line(a.x, a.y, b.x, b.y);
  }
  
  void Trasladar(PVector p) {
    for (PVector v: vertices) {
      v.add(p);
    }
  }
  
  void Rotar(float angulo) {
    for (PVector v: vertices) {
      v.rotate(angulo);
    }
  }
  
}
