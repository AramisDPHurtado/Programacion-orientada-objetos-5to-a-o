Movil m;
PVector G = new PVector(0, 1);
PVector MXY = new PVector(0, 0);
void setup() {
  fullScreen();
  m= new Movil(width/2, height/2);
}
void draw() {
  background(100);
  m.mover();
  m.mostrar();
}
