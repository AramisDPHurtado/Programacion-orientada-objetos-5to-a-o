ArrayList<DuplaDeTubos> tubos;
Circulo bird;
float ultimaPar = 0;
PVector G = new PVector(0, 0.5);

void setup() {
  size(800, 800);
  tubos = new ArrayList<DuplaDeTubos>();
  bird = new Circulo(200, height/2);
}

void agregarTubos() {
  float tActual = millis();
  float dT = tActual - ultimaPar;
  if (dT > 1500) {
    PVector posicion = new PVector(width, height/2);
    tubos.add(new DuplaDeTubos(posicion));
    ultimaPar = tActual;
  }
}

void borrarTubos() {
  for (int i = tubos.size() - 1; i >= 0; i--) {
    if (tubos.get(i).sup.pos.x < 0) {
      tubos.remove(i);
    }
  }
}

void draw() {
  background(0);
  agregarTubos();
  bird.addFuerza(G);
  bird.mover();
  borrarTubos();
  for (DuplaDeTubos t : tubos) {
    t.mover();
    t.mostrar();
  }
  bird.mostrar();
}
