class LineaRecta {
  float m;
  float b;
  
  LineaRecta() {
    m = 1;
    b = 0;
  }
  
  void Dibujar() {
    float x1 = -500, x2 = 500;
    float y1 = m * x1 + b;
    float y2 = m * x2 + b;
    stroke(0);
    line(x1, y1, x2, y2);
    float dx = x2 - x1;
    float dy = y2 - y1;
    float theta = atan(dy/dx);
    textSize(128);
    fill(0);
    text(str(degrees(theta)), -100, -100);
  }
}

float AnguloLineas (LineaRecta l1, LineaRecta l2) {
  return (l2.m-l1.m) / (1 + l1.m*l2.m);
}

PVector Interseccion(LineaRecta l1, LineaRecta l2) {
  float x = (l2.b-l1.b) / (l1.m-l2.m);
  float y = l1.m * ((l2.b-l1.b)/(l1.m-l2.m)) + l1.b;
  return new PVector(x,y);
}
