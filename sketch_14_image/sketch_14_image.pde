Imagen img;

void setup() {
  size(512,512);
  img = new Imagen("image.jpg", 0, 0);
  img.escala = 0.1;
}

void draw() {
  background(0);
  rotate(radians(30));
  for (int m=0; m < 6; m++) {
    for (int n=0; n < 6; n++) {
      img.origen.x = n * 100;
      img.origen.y = m * 100;
      img.Dibujar();
    }
  }
  
}
