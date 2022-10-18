ArrayList<PVector> cubo;
float [][] orto = {
  {1, 0, 0},
  {0, 1, 0},
  {0, 0, 0}
};

void setup() {

}

void draw() {

}

PVector Mult3x3v3(float [][]M, PVector v) {
  PVector r = new PVector();
  r.x = M[0][0]*v.x + M[0][1]*v.y + M[0][2]*v.z;
  r.y = M[1][0]*v.x + M[1][1]*v.y + M[1][2]*v.z;
  r.z = M[2][0]*v.x + M[2][1]*v.y + M[2][2]*v.z;
  return r;
}
