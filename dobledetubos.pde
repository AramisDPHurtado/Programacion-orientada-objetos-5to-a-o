class DuplaDeTubos {
  Cuadrado sup, inf;

  DuplaDeTubos(PVector pos_m) {
    float gapSize = 150;
    int altoTubo = round(random(400));
    float yArriba = pos_m.y - gapSize/2 - altoTubo/2;
    float yAbajo  = pos_m.y + gapSize/2 + altoTubo/2;
    sup = new Cuadrado(pos_m.x, yArriba);
    inf = new Cuadrado(pos_m.x, yAbajo);
  }

  void mover() {
    sup.mover();
    inf.mover();
  }

  void mostrar() {
    sup.mostrar();
    inf.mostrar();
  }
}
