Gizmo3D gizmo;
Creeper creeper;
ArrayList<Creeper> creepers;
PShape cubo;
void setup() {
  size(512, 512, P3D);
  gizmo = new Gizmo3D(100);
  creeper = new Creeper(new PVector(0, 0, 0));
  creepers = new ArrayList<Creeper>();
  int N = 1000;
  for (int k=0; k< N; k++ ) {
    creepers.add(new Creeper(new PVector(random(-500, 500), 
                                         random(-500, 500), 
                                         0)));
  }
}

void draw() {
  background(0,0,0);
  camera( 500, 500, 500,
          0, 0, 0,
          0, 0, -1);
  lights();
  //gizmo.Dibujar();
  //rotateZ(radians(40*sin(2*PI*0.001*millis())));
  
  translate(0.01 * millis(),0,0);
  for (Creeper p: creepers) {
    p.Dibujar();
  }
  creeper.Dibujar();
}
