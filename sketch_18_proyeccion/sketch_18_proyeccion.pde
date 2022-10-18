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
  translate(256, 256);
   for (PVector p3 : cubo) {
     float [][] R_x = Rz(0.001*millis());
     // Rotación sobre el ejec X
     PVector rp3 = Mult3x3v3(R_x,p3);
     // Proyección punto R3 a R2
     PVector p2 = Mult3x3v3(orto,rp3);
     circle(p2.x, p2.y, 10);
   } 
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
