class Movil {
  PVector acel=new PVector(0, 0);
  PVector pos;
  PVector vel=new PVector(4, 3);
  float d=40;
  float angulo=0;
  Movil(float origenX, float origenY) {
    pos=new PVector(origenX, origenY);
  }

  void mostrar() {
    translate(pos.x, pos.y);
    rotate(angulo);
    rectMode(CENTER);
    fill(255);
    rect(0, 0, d, d);
    rotate(-angulo);
    translate(-pos.x, -pos.y);
  }

  void contener() {
    if (pos.x>width||pos.x<0) {
      vel.x*=-1;
    }
    if (pos.y>height||pos.y<0) {
      vel.y*=-1;
    }
  }

  void mover() {
    pos.add(vel);
    vel.add(acel);
    vel.limit(30);

    angulo+=vel.mag()*0.02;

    acel.mult(0);
    contener();
  }

  void agregarFuerza(PVector F) {
    acel.add(F);
  }

  void alejar(PVector otro, float cuanto) {
    PVector r=pos.copy();
    r.sub(otro);
    r.normalize();
    r.mult(cuanto);
    agregarFuerza(r);
  }

  boolean chocaConCirculo(PVector otraPos, float otraR) {
    float distancia=dist(pos.x, pos.y, otraPos.x, otraPos.y);
    return distancia<(d/2+otraR);
  }
  void desacelerar(float cantidad) {
    PVector r=vel.copy();
    r.normalize();
    r.mult(cantidad*-1);
    agregarFuerza(r);
  }
}
