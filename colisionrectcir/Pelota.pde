class Pelota {
  PVector acel=new PVector(0, 0);
  PVector pos;
  PVector vel;
  float r = 15;
  color c = color(255);
  
  
boolean ChocaConRect(PVector rpos, float rw, float rh) {
  if (pos.x < (rpos.x - rw/2)) PMC.x = rpos.x - rw/2;
  else if (pos.x > (rpos.x + rw/2)) PMC.x = rpos.x + rw/2;
  else PMC.x = pos.x;

  if (pos.y < (rpos.y - rh/2)) PMC.y = rpos.y - rh/2;
  else if (pos.y > (rpos.y + rh/2)) PMC.y = rpos.y + rh/2;
  else PMC.y = pos.y;

  return ChocaCon(PMC);
}
boolean ChocaCon(PVector otro) {
  return dist(pos.x, pos.y, otro.x, otro.y) < r;
}
  
  Pelota() {
    pos = new PVector (width/2, height/2);
    vel = new PVector (15, 0);
  }
  void rebotar() {
    if (pos.y > height - r || pos.y < r) {
      vel.y = vel.y * -1;
    }
    if (pos.x > height - r || pos.x < r) {
      vel.x = vel.x * -1;
    }
  }
  void mover() {
    pos.add(vel);
    vel.add(acel);
    vel.limit(30);
    acel.mult(0);
    rebotar();
  }


  void mostrar() {
    fill(c);
    circle(pos.x, pos.y, r);
  }
}
