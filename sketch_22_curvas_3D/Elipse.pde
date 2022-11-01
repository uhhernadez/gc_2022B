class Elipse {
  float delta;
  float t_min;
  float t_max;
  float a;
  float b;
  ArrayList<PVector> puntos;
  
  Elipse(float _delta, float _t_min, float _t_max, 
         float _a, float _b) {
    puntos = new ArrayList<PVector>();
    delta = _delta;
    t_min = _t_min;
    t_max = _t_max;
    a = _a;
    b = _b;
    for(float t = t_min; t <= t_max; t= t+delta ) {
      float x = a * cos(t);
      float y = b * sin(t);
      float z = 10*t;
      puntos.add(new PVector(x, y, z));
    }
  }

  void Dibujar () {
    beginShape();
      for(PVector p: puntos) {
        vertex(p.x, p.y, p.z);
      }
    endShape(); 
  }




}
