boolean hayColision(float px, float py, float cx, float cy, float radio ) {
  float d = dist(px, py, cx, cy);
  if (d > radio) return false;
  else return true;
}
float cx;
float cy;
float radio;
void setup() {
  size(800, 800);
  cx = random(width);
  cy = random(height);
  radio = random(40, 120);
}

void circuloTocado(float cx, float cy, float radio) {
  if (hayColision(mouseX, mouseY, cx, cy, radio)) {
    fill(255, 0, 0);
  } else fill(255 );

  circle(cx, cy, radio*2);
}

void draw() {
  circuloTocado(cx, cy, radio);
}
