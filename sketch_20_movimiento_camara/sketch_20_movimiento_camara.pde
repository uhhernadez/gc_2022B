Gizmo3D gizmo;
PShape cat;

void setup() {
  size(512, 512, P3D);
  cat = loadShape("12221_Cat_v1_l3.obj");
  gizmo = new Gizmo3D(50);
}

void draw() {
  background(0);
  lights();
  camera( 100, 100, 100,
          0,0,0,
          0,0,-1
        );
 gizmo.Dibujar();
 shape(cat);
 float fov = radians(60); // 60 grados
 perspective(fov, float(width)/float(height), 
             10.0, 1000);
}
