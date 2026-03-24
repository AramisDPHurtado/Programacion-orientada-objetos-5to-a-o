
int d = 10;
int xprev=0;
int yprev=0;

void setearLinea() {
  stroke(126);
  strokeWeight(5);
}
void imprimoCuatrolineas() {
  line(180, 100, 200, 269);
  line(380, 300, 400, 420);
  line(500, 530, 580, 580);
  line(150, 150, 450, 450);
}
void setup() {
  size( 800, 600 );
  background(255, 100, 100);
  // frameRate(200);
}
void draw() {
  setearLinea();

  imprimoCuatrolineas();
}
