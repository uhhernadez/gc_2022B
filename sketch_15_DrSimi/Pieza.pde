class Pieza {
  PImage img;
  PVector origen;
  PVector pivote;
  
  Pieza (String ruta, float x, float y, float px, float py) {
    img = loadImage(ruta); // null
    origen = new PVector(x, y);
    pivote = new PVector(px, py);
  }

  void Dibujar () {
    pushMatrix();
      translate(origen.x,origen.y);
      image(img, pivote.x, pivote.y);
      circle(origen.x, origen.y, 5);
    popMatrix();
  }
}
