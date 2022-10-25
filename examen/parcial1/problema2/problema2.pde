Imagen octagono;
Imagen rombo;

void setup() {
  size(512,512);
  octagono = new Imagen("octagono.png", 0, 0, 100);
  rombo = new Imagen("rombo.png", 0, 0, 100);
  rombo.escala = octagono.escala;
}

void draw() {
  background(0);
  
  for (int m=0; m < 5; m++) {
    for (int n=0; n < 5; n++) {
      octagono.origen.x = n * 101;
      octagono.origen.y = m * 101;
      rombo.origen.x = 71 + n * 101;
      rombo.origen.y = 71 + m * 101;
      octagono.Dibujar();
      rombo.Dibujar();
    }
  }
  
}
