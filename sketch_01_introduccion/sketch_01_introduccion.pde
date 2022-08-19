void setup() {  
  size(500, 500);
  frameRate(30);
}
 
void draw() {  
  background(204);
  point(20, 20);
  circle(224, 184, 220);
  line(120, 80, 340, 300);
  
  beginShape();
    vertex(120, 80);
    vertex(340, 80);
    vertex(340, 300);
  endShape(CLOSE);
  PVector v = new PVector(10, 10);
  println(v);
}
