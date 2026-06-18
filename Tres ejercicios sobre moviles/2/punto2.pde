//Cree el void acercar creo q esta bastante bueno
Movil m;
Movil otro;
PVector G = new PVector(0, 1);
PVector MXY = new PVector(0,0);
void setup() {
  fullScreen();
  m= new Movil(width/2, height/2);
  otro= new Movil(200,300);
}
void draw() {
  background(100);
  m.mover();
  m.contener();
  m.acercar(otro.pos,20);
  otro.mover();
  m.mostrar();
  otro.mostrar();
}
