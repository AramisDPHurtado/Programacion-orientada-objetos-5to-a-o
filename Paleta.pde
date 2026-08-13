class  Rectangulo {
  int alto=100;
  int ancho=10;
  color c = color(255);
  PVector pos;
  Rectangulo(float columna){
    pos = new PVector (columna,height/2);
  }
  
boolean ChocaConCirculo(PVector cpos, float cr) {
  println(cr);
  return dist(PMC.x, PMC.y, cpos.x, cpos.y) < cr;
}
  
  void mostrar() {
    fill(c);
    rectMode(CENTER);
    rect(pos.x, pos.y, ancho, alto);
  }
}
