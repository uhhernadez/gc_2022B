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
  PVector camara_pos = new PVector(100, 100, 100);
  PVector punto_prueba = new PVector(1, 0, 0);
  //float [][] R = Ry(radians(0.01*millis()));
  //float [][] R = Ry(radians(-90));
  
  float [][] R = Rz(radians(-270+0.01*millis()));
  
  PVector pr = Mult3x3v3(R,punto_prueba);
  
  pr.add(camara_pos);
  
  PVector desplazamiento = new PVector(0, 0, -0.01*millis());
  camara_pos.add(desplazamiento);
  punto_prueba.add(desplazamiento);
  
  camera( camara_pos.x, camara_pos.y, camara_pos.z,
          punto_prueba.x, punto_prueba.y, punto_prueba.z,
          0,0,-1
        );
 pushMatrix();
   translate(punto_prueba.x, punto_prueba.y, punto_prueba.z);
   sphere(10);
 popMatrix();
 gizmo.Dibujar();
 pushMatrix();
   rotateZ(radians(180));
   shape(cat);
 popMatrix();
 float fov = radians(60); // 60 grados
 perspective(fov, float(width)/float(height), 
             10.0, 1000);
}

PVector Mult3x3v3(float [][]M, PVector v) {
  PVector r = new PVector();
  r.x = M[0][0]*v.x + M[0][1]*v.y + M[0][2]*v.z;
  r.y = M[1][0]*v.x + M[1][1]*v.y + M[1][2]*v.z;
  r.z = M[2][0]*v.x + M[2][1]*v.y + M[2][2]*v.z;
  return r;
}

float [][] Rx(float theta) {
  float [][] R ={
    {1, 0, 0},
    {0, cos(theta), -sin(theta)},
    {0, sin(theta), cos(theta)}
  };
  return R;
}

float [][] Ry(float theta) {
float [][] R ={
    {cos(theta), 0, sin(theta)},
    {0, 1, 0},
    {-sin(theta), 0, cos(theta)}
  };
  return R;
}

float [][] Rz(float theta) {
float [][] R ={
    {cos(theta), -sin(theta), 0},
    {sin(theta), cos(theta), 0},
    {0, 0, 1}
  };
  return R;
}
