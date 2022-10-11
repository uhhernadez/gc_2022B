Gizmo3D gizmo;
Creeper creeper;
PShape cubo;
void setup() {
  size(512, 512, P3D);
  gizmo = new Gizmo3D(100);
  creeper = new Creeper();
}

void draw() {
  background(0,0,0);
  camera( 200, 200, 200,
          0, 0, 0,
          0, 0, -1);
  lights();
  //gizmo.Dibujar();
  //rotateZ(radians(40*sin(2*PI*0.001*millis())));
  creeper.Dibujar();
}
