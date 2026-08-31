ArrayList<Cuadrado> tubos;
Pelota bird;
float ultimaPar = 0;
PVector G = new PVector(0, 0.5);
DuplaDeTubos du;

void setup() {
  size(800, 800);
  tubos = new ArrayList<Cuadrado>();
  bird = new Pelota(200, height/2);
}

void agregarTubos() {
  float tActual = millis();
  float dT = tActual - ultimaPar;
  if (dT > 1500) {
    //tubos.add(new Cuadrado(width));
    ultimaPar = tActual;
  }
}

void borrarTubos() {
  for (int i = tubos.size() - 1; i >= 0; i--) {
    if (tubos.get(i).pos.x < 0) {
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
  for (Cuadrado t : tubos) {
    t.mover();
    t.mostrar();
  }
  bird.mostrar();
}
