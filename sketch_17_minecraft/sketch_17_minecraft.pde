Gizmo3D gizmo;
Pieza3D pieza;
PShape cubo;
void setup() {
  size(512, 512, P3D);
  gizmo = new Gizmo3D(100);
  float brazo_largo = 100;
  pieza = new Pieza3D(new PVector(0,0,-brazo_largo/2), 10, 10, brazo_largo );
}

void draw() {
  background(0,0,0);
  camera( 100, 100, 100,
          0, 0, 0,
          0, 0, -1);
  lights();
  //gizmo.Dibujar();
  rotateY(radians(40*sin(2*PI*0.001*millis())));
  pieza.Dibujar();
}
