ArrayList<Circulo> circulos;

void setup () {
  size(512, 512);
  circulos = new ArrayList<Circulo>();
  for (int i = 0; i < 1000; i++) {
    circulos.add(new Circulo(random(512), random(512), random(10,90)));  
  }
 // 
 // circulos.add(new Circulo(300, 100, 50));
 // circulos.add(new Circulo(10, 500, 60));
}

void draw() {
  background(0);
  for (Circulo c: circulos) {
    c.Dibujar();
  }
}
