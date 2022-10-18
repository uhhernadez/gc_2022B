class Gizmo3D {
  float largo;
  
  Gizmo3D (float l) {
    largo = l;
  }

  void Dibujar() {
   // Eje X 
   stroke(255, 0, 0);
   line(0, 0, 0, largo, 0, 0);
   // Eje Y
   stroke(0, 255, 0);
   line(0, 0, 0, 0, largo, 0);
   // Eje Z
   stroke(0, 0, 255);
   line(0, 0, 0, 0, 0, largo);
  }
}
