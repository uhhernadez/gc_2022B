Circulo circulo;
PVector direccion;
void setup () {
  size(512, 512);
  circulo = new Circulo();
  circulo.Trasladar(100, 100);
  direccion = new PVector();
}

void draw () {
  circulo.Dibujar();
  circulo.Trasladar(direccion);
  //circulo.Trasladar(1, 1);
}

void mouseClicked() {
  PVector puntero = new PVector(mouseX, mouseY);
  PVector d = PVector.sub(puntero,circulo.c);
  direccion = d.normalize();
  //circulo.Trasladar(d);
  //println("mouseClicked ",str(mouseX), str(mouseY));
}
