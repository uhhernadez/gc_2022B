class SolidoRevolucion {
  ArrayList<PVector> puntos;
  ArrayList<PVector> malla;
  
  SolidoRevolucion(ArrayList<PVector> pts) {
    //puntos = pts;
    puntos = new ArrayList<PVector>();
    malla = new ArrayList<PVector>();
    for (PVector p: pts) {
      puntos.add(p);
    }
    Rotacion();
  }
  
  void Rotacion () {
     for (int k = 0; k <= 360; k+=10) {
       float [][] Rz = Rz(radians(k));
       for (PVector p: puntos) {
         PVector pr = Mult3x3v3(Rz,p);
         malla.add(pr);
       }
     }
  }
  
  void Dibujar() {
    for(PVector p: malla) {
      pushMatrix();
        translate(p.x, p.y, p.z);
        sphere(2);
      popMatrix();
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
 
}
