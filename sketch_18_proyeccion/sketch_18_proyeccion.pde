ArrayList<PVector> cubo;
float [][] orto = {
  {1, 0, 0},
  {0, 1, 0},
  {0, 0, 0}
};

void setup() {
  size(512, 512);
  cubo = new ArrayList<PVector>();
  cubo.add(new PVector(50, 50, 50));
  cubo.add(new PVector(-50, 50, 50));
  cubo.add(new PVector(-50, -50, 50));
  cubo.add(new PVector(50, -50, 50));
  
  cubo.add(new PVector(50, 50, -50));
  cubo.add(new PVector(-50, 50, -50));
  cubo.add(new PVector(-50, -50, -50));
  cubo.add(new PVector(50, -50, -50));
}



void draw() {
  background(128);
  ArrayList<PVector> cubo2d = new ArrayList<PVector>();
  translate(256, 256);
   for (PVector p3 : cubo) {
     float [][] R_x = Ry(0.001*millis());

     //float [][] R_x = Rz(0);
     // Rotación sobre el ejec X
     PVector rp3 = Mult3x3v3(R_x,p3);
     PVector tp3 = PVector.add(rp3,new PVector(0,0,0.01*millis()));
     // Proyección punto R3 a R2
     //PVector p2 = Mult3x3v3(orto,tp3);
     PVector p2 = Perspectiva(200, tp3);
     circle(p2.x, p2.y, 10);
     cubo2d.add(p2);
   } 
  DibujarCubo2D(cubo2d);
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

PVector Perspectiva(float d, PVector p3) {
  float [][] M = {
    {1, 0, 0},
    {0, 1, 0},
    {0, 0, 1/d}
  };
  
  PVector pnn = Mult3x3v3(M, p3);
  return pnn.div(pnn.z);
}

void DibujarCubo2D(ArrayList<PVector> p) {
  Linea(p.get(0), p.get(1));
  Linea(p.get(1), p.get(2));
  Linea(p.get(2), p.get(3));
  Linea(p.get(3), p.get(0));
  
  Linea(p.get(4), p.get(5));
  Linea(p.get(5), p.get(6));
  Linea(p.get(6), p.get(7));
  Linea(p.get(7), p.get(4));
  
  Linea(p.get(0), p.get(4));
  Linea(p.get(1), p.get(5));
  Linea(p.get(2), p.get(6));
  Linea(p.get(3), p.get(7));
  
  
}

void Linea(PVector a, PVector b) {
  line(a.x, a.y, b.x, b.y);
}
