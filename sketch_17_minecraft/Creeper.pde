class Creeper {
  Pieza3D pierna_der;
  Pieza3D pierna_izq;
  Pieza3D brazo_der;
  Pieza3D brazo_izq;
  Pieza3D tronco;
  Pieza3D cabeza;
  Creeper () {
    float largo = 100;
    pierna_der = new Pieza3D(new PVector(0,0,-largo/2)
                             , 10, 10, largo );
    pierna_izq = new Pieza3D(new PVector(0,0,-largo/2)
                             , 10, 10, largo );
    brazo_der = new Pieza3D(new PVector(0,-5,-largo/2 + 5)
                             , 10, 10, largo );
    brazo_izq = new Pieza3D(new PVector(0,-5,-largo/2 + 5)
                             , 10, 10, largo );    
    tronco = new Pieza3D(new PVector(), 10, 20, 20 );                         
    cabeza = new Pieza3D(new PVector(), 20, 20, 20 );                         
  }
  
  void Dibujar () {
    DibujarPiernaDer();
    DibujarPiernaIzq();
    DibujarTronco();
    DibujarCabeza();
    DibujarBrazoIzq();
    DibujarBrazoDer();
  }
  
  void DibujarPiernaDer() {
    pushMatrix();
      translate(0,5,100);
      pierna_der.Dibujar();
    popMatrix();
  }
  
  void DibujarPiernaIzq() {
    pushMatrix();
      translate(0,-5,100);
      pierna_izq.Dibujar();
    popMatrix();
  }
  
  void DibujarTronco() {
    pushMatrix();
      translate(0,0,110);
      tronco.Dibujar();
    popMatrix();
  }
  
  void DibujarCabeza() {
    pushMatrix();
      translate(0,0,130);
      cabeza.Dibujar();
    popMatrix();
  }
  
  void DibujarBrazoIzq() {
    pushMatrix();
      translate(0,-10,115);
      brazo_izq.Dibujar();
    popMatrix();
  }
  void DibujarBrazoDer() {
    pushMatrix();
      translate(0,10,115);
      brazo_izq.Dibujar();
    popMatrix();
  }

}
