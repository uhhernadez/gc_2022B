class Parabola {
  float delta;
  float t_min;
  float t_max;
  ArrayList<PVector> puntos;
  
  Parabola(float _delta, float _t_min, float _t_max) {
    puntos = new ArrayList<PVector>();
    delta = _delta;
    t_min = _t_min;
    t_max = _t_max;
    for(float t = t_min; t <= t_max; t= t+delta ) {
      float x = t;
      float y = t*t;
      puntos.add(new PVector(x, y));
    }
  }

  void Dibujar () {
    beginShape();
      for(PVector p: puntos) {
        vertex(p.x, p.y);
      }
    endShape(); 
  }
}
