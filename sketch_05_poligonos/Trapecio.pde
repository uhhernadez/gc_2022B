class Trapecio {
  PVector p1;
  PVector p2;
  PVector p3;
  PVector p4;
  
  Trapecio () {
    p1 = new PVector (50, 50);
    p2 = new PVector (p1.x + 200 , 50);
    p3 = new PVector (p2.x-30, p2.y+ 30);
    p4 = new PVector (p1.x+30, p2.y+ 30);
  }

  Trapecio (float x, float y, float base, float altura) {
    p1 = new PVector (x, y);
    p2 = new PVector (p1.x + base , p1.y);
    p3 = new PVector (p2.x - 0.2 * base, p2.y + altura);
    p4 = new PVector (p1.x + 0.2 * base, p2.y + altura);
  }

  void Dibujar () {
    fill(255, 0, 0);
    strokeWeight(2);
    beginShape();
      vertex(p1.x, p1.y);
      vertex(p2.x, p2.y);
      vertex(p3.x, p3.y);
      vertex(p4.x, p4.y);
    endShape(CLOSE);
    
    /*
    quad(p1.x, p1.y, 
         p2.x, p2.y, 
         p3.x, p3.y, 
         p4.x, p4.y);
    */
  }
}
