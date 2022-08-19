// Variable global
Punto2D punto;
float dia;

void setup() {
  //punto = new Punto2D();
  dia = 20;
  punto = new Punto2D(10,10);
}

void draw() {
  //Punto2D copia = new Punto2D(punto);
  //copia.Dibujar();
  
  dia += 0.5;
  punto.Dibujar(dia);
}
