Movil m;
Movil otro;
Movil bola;
Movil bolon;
PVector G = new PVector(0, 1);
PVector MXY = new PVector(0,0);
void setup() {
  fullScreen();
  colorMode(HSB,width);
  m= new Movil(width/2, height/2);
  otro= new Movil(200,300);
  bola= new Movil(600,450);
  bolon= new Movil(100,350);
  bolon.d = 60;
}
void draw() {
  float h= m.pos.x;
  float s= m.pos.y;
  float b= otro.pos.x;
  background(h,s,b);
  if(m.chocaConCirculo(otro.pos,20) == true){
    m.alejar(otro.pos,otro.d/2);
    otro.alejar(m.pos,m.d/2);
  }
  m.desacelerar(10);
  otro.desacelerar(10);
  m.agregarFuerza(G);
  otro.agregarFuerza(G);
  MXY.x=  mouseX;
  MXY.y= mouseY;
  m.alejar(MXY,20);
  otro.alejar(MXY,20);
  m.mover();
  otro.mover();
  m.mostrar();
  otro.mostrar();
}
