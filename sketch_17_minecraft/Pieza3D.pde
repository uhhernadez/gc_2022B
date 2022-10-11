class Pieza3D {
  PVector offset;
  float ancho; // width 
  float alto; // height
  float profundidad; // depth
  Gizmo3D gizmo;

  Pieza3D(PVector _offset, float _ancho, float _alto, float _profundidad) {
    offset = new PVector(_offset.x, _offset.y, _offset.z);
    ancho = _ancho;
    alto = _alto;
    profundidad = _profundidad;
    gizmo = new Gizmo3D(30);
  }

  void Dibujar() {
    gizmo.Dibujar();
    pushMatrix();
      translate(offset.x, offset.y, offset.z);
      box(ancho, alto, profundidad);
    popMatrix();
  }
}
