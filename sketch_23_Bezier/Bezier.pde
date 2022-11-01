class Bezier {
  PVector p0;
  PVector p1;
  PVector p2;
  PVector p3;
  
  ArrayList<PVector> puntos;

  Bezier(PVector _p0, PVector _p1) {
    p0 = new PVector(_p0.x, _p0.y);
    p1 = new PVector(_p1.x, _p1.y);
    puntos = new ArrayList<PVector>();
    PrimerOrden();
  }
  
  Bezier(PVector _p0, PVector _p1, PVector _p2) {
    p0 = new PVector(_p0.x, _p0.y);
    p1 = new PVector(_p1.x, _p1.y);
    p2 = new PVector(_p2.x, _p2.y);
    puntos = new ArrayList<PVector>();
    SegundoOrden();
  }
  
   Bezier(PVector _p0, PVector _p1, PVector _p2, PVector _p3) {
     p0 = new PVector(_p0.x, _p0.y);
     p1 = new PVector(_p1.x, _p1.y);
     p2 = new PVector(_p2.x, _p2.y);
     p3 = new PVector(_p3.x, _p3.y);
     puntos = new ArrayList<PVector>();
     TercerOrden();
   }
  
  void PrimerOrden() {
     for (float t=0; t <= 1; t+= 0.001) {
       float x = p0.x * (1 -t) + p1.x * t;
       float y = p0.y * (1 -t) + p1.y * t;
       puntos.add(new PVector(x, y));
     }
  }  
  
  void SegundoOrden() {
  for (float t=0; t <= 1; t+= 0.001) {
       float a = (1 - t) * (1 - t);
       float b = (1 - t) * 2 * t;
       float c = t * t;
       float x = a * p0.x + b * p1.x + c * p2.x;
       float y = a * p0.y + b * p1.y + c * p2.y;
       puntos.add(new PVector(x, y));
     }
  }
  
  void TercerOrden() {
    for (float t=0; t <= 1; t+= 0.001) {
         float a = (1 - t) * (1 - t) * (1 - t);
         float b = 3 * t * (1 - t) * (1 - t);
         float c = 3 * t * t * (1 - t);
         float d = t * t * t;
         float x = a * p0.x + b * p1.x + c * p2.x + d * p3.x;
         float y = a * p0.y + b * p1.y + c * p2.y + d * p3.y;
         puntos.add(new PVector(x, y));
     }
  }
  
  void Dibujar () {
    noFill();
    beginShape();
      for(PVector p: puntos) {
        vertex(p.x, p.y);
      }
    endShape();
    fill(255);
  }
  
}
