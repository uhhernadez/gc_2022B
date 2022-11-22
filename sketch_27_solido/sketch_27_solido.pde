SolidoRevolucion solido;
void setup() {
  size(512,512, P3D);
  ArrayList<PVector> puntos = new ArrayList<PVector>();
  
  puntos.add(new PVector(20, 0, 50));
  puntos.add(new PVector(30, 0, 30));
  puntos.add(new PVector(20, 0, 10));
  puntos.add(new PVector(30, 0, -20));
  puntos.add(new PVector(30, 0,-40 ));
  solido = new SolidoRevolucion(puntos);
}

void draw() {
  camera(100,100,100,
         0,0,0,
         0,0,-1);
         
  solido.Dibujar();
}
