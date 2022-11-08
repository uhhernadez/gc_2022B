Sprite cat_walk;
Bezier bezier;
PVector p0, p1, p2, p3;

void setup() {
  size(512,512);
  cat_walk = new Sprite("cat/Run_", 8, 0.2);
  p0 = new PVector(50, 50);
  p1 = new PVector(100, 50);
  p2 = new PVector(0, 400);
  p3 = new PVector(400, 50);
  bezier = new Bezier(p0, p1, p2, p3);
}
int k = 0;
void draw() {
  background(125);
  bezier.Dibujar();
  PVector p = bezier.puntos.get(k);
  k = (k+1) % bezier.puntos.size();
  translate(p.x, p.y);
  circle(0,0,10);
  cat_walk.Draw();  
}
