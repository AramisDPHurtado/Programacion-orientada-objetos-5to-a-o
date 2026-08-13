Pelota P;
Paleta uno;
Paleta dos;
PVector PMC = new PVector(0,O);

void setup() {
  size(800, 800);
  P= new Pelota();
  uno = new Paleta(width/4);
  dos = new Paleta(width-width/4);
}

void draw() {
  background(0);
  P.mover();
  uno.mostrar();
  dos.mostrar();
  P.mostrar();
}
