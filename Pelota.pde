class Pelota {
  PVector acel=new PVector(0, 0);
  PVector pos;
  PVector vel;
  float r = 15;
  color c = color(255);
  
  
  boolean ChocaConRect(PVector rpos,float rw, float rh){
    if(pelota.pos.x < (rect.pos.x - w/2)) PMC.x = rect.pos.x - w/2;
    else if (pelota..pos.x > (rect.pos.x + w/2)) PMC.x = rect.pos.x +w/2;
    else PMC.x= pelota.pos.x;
    return ChocaCon(PMC);
  }
  boolean ChocaCon(PVector otro){
    
  }
/*  void alejar (PVector otro, float cuanto) {
    PVector r = pos.copy();
    r.sub(otro);
    r.normalize();
    r.mult(cuanto);
    agregarFuerza(r);
  }
*/
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
