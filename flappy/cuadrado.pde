class Cuadrado {
  int alto = 100;
  int ancho = 10;
  color c = color(255);
  PVector pos;
  float vel = 3;

  Cuadrado(float x,float y) {
    pos = new PVector(x, y);
  }

  void mover() {
    pos.x -= vel;
  }

  void mostrar() {
    fill(c);
    rectMode(CENTER);
    rect(pos.x, pos.y, ancho, alto);
  }
}
