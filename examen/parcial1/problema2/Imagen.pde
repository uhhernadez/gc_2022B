class Imagen {
  float escala;
  // Coordenas del lienzo
  PVector origen;
  PImage img;
  
  Imagen (String ruta, float x, float y, float ancho) {
    img = loadImage(ruta);
    if (img == null) {
      println("La imagen no existe en: " + ruta);
    }
    origen = new PVector(x,y);
    escala = ancho/img.width;
  }
  
  void Dibujar () {
    pushMatrix();
      translate(origen.x, origen.y);
      scale(escala);
      image(img, 0, 0);
    popMatrix();
  }

}
