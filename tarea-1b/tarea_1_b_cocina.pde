float sizeperi;
float sizehor;

void setup() {
  size(800, 800);
  rectMode(CENTER);
  sizeperi = min(height, width);
  sizehor =  min(height, width);
}
void cuerpoCocina() {
  noFill();
  rect(width/2, height/2, width*0.25, height*0.25);
  line(width*0.5, height*0.25, width*0.25, height*0.25);
  line(width*0.375, height*0.375, width*0.25, height*0.25);
  line(width*0.25, height*0.5, width*0.25, height*0.25);
  line(width*0.25, height*0.5, width*0.375, height*0.625);
  line(width*0.5, height*0.25, width*0.625, height*0.375);
  line(width*0.375, height*0.4375, width*0.625, height*0.4375);
}

void perillas() {
  circle(width*0.425, height*0.40625, sizeperi*0.0125);
  circle(width*0.475, height*0.40625, sizeperi*0.0125);
  circle(width*0.525, height*0.40625, sizeperi*0.0125);
  circle(width*0.575, height*0.40625, sizeperi*0.0125);
}

void hornallas() {
  circle(width*0.34375, height*0.28125, sizehor * 0.0375);
  circle(width*0.46875, height*0.28125, sizehor * 0.0375);
  circle(width*0.40625, height*0.34375, sizehor * 0.0375);
  circle(width*0.53125, height*0.34375, sizehor * 0.0375);
}
void manijaHorno() {
  line(width*0.45, height*0.5, width*0.5625, height*0.5);
  line(width*0.45, height*0.4875, width*0.5625, height*0.4875);
  line(width*0.45, height*0.5, width*0.45, height*0.4875);
  line(width*0.5625, height*0.5, width*0.5625, height*0.4875);
}

void draw() {

  cuerpoCocina();

  perillas();

  hornallas();

  manijaHorno();
}
