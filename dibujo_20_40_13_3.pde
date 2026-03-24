
int d = 10;
int xprev=0;
int yprev=0;

void setup() {
  size( 800, 600 );
  background(255, 100, 100);
  // frameRate(200);
}
void draw() {

  if (mousePressed) {
    line(mouseX, mouseY, xprev, yprev);
    line(width-mouseX, mouseY, width-xprev, yprev);
    line(mouseX, height-mouseY, xprev, height-yprev);
    line(width-mouseX, height-mouseY,width - xprev, height-yprev);
  }
  xprev=mouseX;
  yprev=mouseY;
}
