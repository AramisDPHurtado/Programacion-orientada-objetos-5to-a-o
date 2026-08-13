Pelota P;
Rectangulo uno;
PVector PMC = new PVector(0,0);

void setup() {
  size(800, 800);
  P= new Pelota();
  uno = new Rectangulo(width/2);
}

void draw() {
  background(0);
  if (P.ChocaConRect(uno.pos, uno.ancho, uno.alto)){
  uno.c = color(0,255,0);
  }
  else{
  uno.c = color(255);
}
  
  P.mover();
  uno.mostrar();
  P.mostrar();
}
