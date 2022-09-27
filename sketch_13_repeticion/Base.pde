class Base {
  PVector origen;
  float [] lados;
  float [] ancho_trazos;
  color [] fondos;
  color [] lineas;
   
  int N;
  Base (int x, int y, float lado) {
    //FloatList ls = new FloatList();
    //ls.append(0.9);
    origen = new PVector(x, y);
    N = 5;
    lados = new float[N];
    ancho_trazos = new float[N];
    fondos = new color[N];
    lineas = new color[N];
    
    lados[0] = lado;
    ancho_trazos[0] = random(0,5);
    fondos[0] = color(random(0,255), random(0, 255), random(0, 255));
    lineas[0] = color(random(0, 255));
    //lados[1] = random(0.7*lados[0], 0.9*lados[0]);
    //lados[2] = random(0.7*lados[1], 0.9*lados[1]);
    //lados[3] = random(0.7*lados[2], 0.9*lados[2]);
    for (int k = 1 ; k<N ; k++ ) {
      lados[k] = random(0.6*lados[k-1], 0.9*lados[k-1]);
      ancho_trazos[k] = random(0, 5);
      fondos[k] = color(random(0,255), random(0, 255), random(0, 255));
      lineas[k] = color(random(0, 255));
    }
  }

  void Dibujar() {
    fill(fondos[0]);
    stroke(lineas[0]);
    strokeWeight(ancho_trazos[0]);
    square(origen.x, origen.y, lados[0]);
    for (int k = 1 ; k<N ; k++ ) {
      fill(fondos[k]);
      stroke(lineas[k]);
      strokeWeight(ancho_trazos[k]);
      float d = (lados[0] - lados[k])/2;
      square(origen.x+d, origen.y+d, lados[k]);
    }
  }
}
