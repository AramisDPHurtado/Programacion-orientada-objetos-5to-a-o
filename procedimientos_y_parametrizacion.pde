float px;
float py;

void setup() {
  size(200, 200);
}

void enchufe(float pX, float pY, float ancho, float alto) {
  rectMode(CENTER);
  rect(pX, pY, ancho, alto);
  line(pX - ancho*0.2, pY - alto*0.2, pX - ancho*0.2, pY + alto*0.2);
  line(pX + ancho*0.2, pY - alto*0.2, pX + ancho*0.2, pY + alto*0.2);
  circle(pX, pY + alto*0.35, ancho*0.15);
}

void draw() {
  background(220);
  enchufe(px, py, width*0.15, height*0.15);
}

void mousePressed() {
  px = mouseX;
  py = mouseY;
}
