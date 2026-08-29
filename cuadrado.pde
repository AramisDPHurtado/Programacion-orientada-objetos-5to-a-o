class  cuadrado {
  int alto=100;
  int ancho=10;
  color c = color(255);
  PVector pos;
  cuadrado(float columna){
    pos = new PVector (columna,height/2);
  }
    cuadrado() {
  }
  void mostrar() {
    fill(c);
    rectMode(CENTER);
    rect(pos.x, pos.y, ancho, alto);
  }
}
