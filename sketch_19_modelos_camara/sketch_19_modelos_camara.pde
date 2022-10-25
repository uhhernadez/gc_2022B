Gizmo3D gizmo;
PShape lego;

void setup() {
  size(512, 512, P3D);
  lego = loadShape("lego.obj");
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
 pushMatrix();
 translate(-50,0,0);
   pushMatrix();
     rotateX(radians(90));
     pushMatrix();
       rotateY(radians(90));
       shape(lego);
     popMatrix();
   popMatrix();
 popMatrix();
 float fov = radians(60); // 60 grados
 ortho(-100, 100, -100, 100); // Same as ortho()
 //perspective(fov, float(width)/float(height), 
 //           10.0, 1000);
}
