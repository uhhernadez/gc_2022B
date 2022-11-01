Parabola p;
Elipse e;
void setup() {
  size(500,500, P3D);
  //p = new Parabola(0.01, -50, 50);
  e = new Elipse(PI/180, -10*PI, 100*PI, 40, 40);
}
int k = 0;
void draw() {
  translate(250, 250);
  background(255);
  //noFill();
  lights();
  //p.Dibujar();
  PVector p = e.puntos.get(k % e.puntos.size());
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), 
              1, cameraZ*10.0);
  camera(p.x, p.y, p.z,
          0, 0, 0,
          0, 0, -1);
  //e.Dibujar();
  box(10);
  ellipse(0, 0, 160, 40); 
  k++;
}
