class Pelota {
  PVector acel = new PVector(0, 0);
  PVector pos;
  PVector vel;
  float r = 15;
  color c = color(255);

  Pelota(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
  }

  void addFuerza(PVector f) {
    acel.add(f);
  }

  void rebotar() {
    if (pos.y > height - r || pos.y < r) {
      vel.y = vel.y * -1;
    }
    if (pos.x > width - r || pos.x < r) {
      vel.x = vel.x * -1;
    }
  }

  void mover() {
    vel.add(acel);
    vel.limit(30);
    pos.add(vel);
    acel.mult(0);
    rebotar();
  }

  void mostrar() {
    fill(c);
    circle(pos.x, pos.y, r);
  }
}
