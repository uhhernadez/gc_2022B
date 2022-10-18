class Carrito {
  PVector centro;
  PVector ejeX;
  float rotacion;
  float radio;
  ArrayList<PVector> vertices;
  
  Carrito (float x, float y) {
    centro = new PVector(x, y);
    vertices = new ArrayList<PVector>();
    vertices.add(new PVector(60, 30));
    vertices.add(new PVector(-60, 30));
    vertices.add(new PVector(-60, -30));
    vertices.add(new PVector(60, -30));
    rotacion = 0;
    radio = 100;
    ejeX = new PVector(radio * cos (rotacion), radio * sin (rotacion));
  }
  
  void Dibujar () {
    ejeX.set(radio * cos (rotacion), radio * sin (rotacion));
    stroke(0);
    beginShape();
    for (PVector v : vertices) {
      PVector vv = new PVector(v.x, v.y);
      vv.rotate(rotacion);
      PVector traslacion = new PVector(centro.x + vv.x, centro.y + vv.y );
      vertex(traslacion.x, traslacion.y);
    }
    endShape(CLOSE);
    circle(centro.x, centro.y,10);
    stroke(255, 0, 0 );
    line(centro.x, centro.y,centro.x+ ejeX.x , centro.y+ ejeX.y  );
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
  
  void RotarPVector(float angulo) {
    centro.rotate(angulo);
  }
  
  void RotacionLocal(float angulo) {
    rotacion += angulo;
  }
  
  void Adelante(float desplazamiento) {
    centro.add(ejeX.normalize().mult(desplazamiento));
  }
  
  void Atras(float desplazamiento) {
    centro.add(ejeX.normalize().mult(-desplazamiento));
  }
  
}
