Gizmo3D gizmo;
PShape cubo;
void setup() {
  size(512, 512, P3D);
  gizmo = new Gizmo3D(100);
  cubo = loadShape("untitled.obj");
}

void draw() {
  background(0,0,0);
  //translate(50,50,50);
  //float x = 100 * cos (2*PI*0.0001*millis());
  //float y = 100 * sin (2*PI*0.0001*millis());
  
  
  camera( 100, 100, 100,
          0, 0, 0,
          0, 0, -1);
  
  gizmo.Dibujar();
  translate(0, 0, 0);
  scale(20);
  lights();
  rotateX(0.001*millis());
  shape(cubo);
  
  /*
  pushMatrix();
    translate(50, 50, 0);
    rotateZ(0.001*millis());
    gizmo.Dibujar();
    box(20);
    translate(30, 30, 0);
    rotateX(0.001*millis());
    gizmo.Dibujar();
    box(20);
    translate(0, 30, 30);
    rotateY(0.001*millis());
    gizmo.Dibujar();
    box(20);
  popMatrix();
  */
  
}
