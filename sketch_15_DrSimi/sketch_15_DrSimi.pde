Pieza mano_izq;
Pieza brazo_izq;
Pieza pierna_izq;
Pieza mano_der;
Pieza brazo_der;
Pieza pierna_der;
Pieza cabeza;
Pieza tronco;

void setup () {
  size(512, 512);
  mano_izq = new Pieza("DrSimi/mano_izq.png", 0, 0, -5, -50);
  brazo_izq = new Pieza("DrSimi/brazo_izq.png", 0, 0, -10, -70);
  pierna_izq = new Pieza("DrSimi/pierna_izq.png", 0, 0,-40 , 0);
  
  mano_der = new Pieza("DrSimi/mano_der.png", 0, 0, -67, -50);
  brazo_der = new Pieza("DrSimi/brazo_der.png", 0, 0, -60, -70);
  pierna_der = new Pieza("DrSimi/pierna_der.png", 0, 0,-60 , 0);
  
  cabeza = new Pieza ("DrSimi/cabeza.png", 0, 0, -66, -77);
  tronco = new Pieza ("DrSimi/tronco.png", 0, 0, -92, -92.5);
}

void draw () {
  background(0);
  translate (width/2, height/2);
  //float T = 0.001;
  //rotate(radians(20*sin(2*PI*T*millis())));
  //mano_izq.Dibujar();
  //mano_der.Dibujar();
  //brazo_izq.Dibujar();
  //brazo_der.Dibujar();
  
  //pierna_der.Dibujar();
  //cabeza.Dibujar();
  
  pushMatrix();
    translate(40,50);
    pierna_izq.Dibujar();
  popMatrix();
  pushMatrix();
    translate(-40,50);
    pierna_der.Dibujar();
  popMatrix();
  
  tronco.Dibujar();
  
  pushMatrix();
    translate(0,-120);
    cabeza.Dibujar();
  popMatrix();
  
  pushMatrix();
    translate(60, -50);
    brazo_izq.Dibujar();
    translate(47,-60);
    mano_izq.Dibujar();
  popMatrix();

  pushMatrix();
    translate(-60, -50);
    brazo_der.Dibujar();
    translate(-47,-60);
    mano_der.Dibujar();
  popMatrix();
  
}
