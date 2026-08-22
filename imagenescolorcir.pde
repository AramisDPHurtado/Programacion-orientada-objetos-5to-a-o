PImage img;

color c;

void setup() {
  size(800, 600);
  img = loadImage("data/pallas1.jpg");
  noStroke();
}

void draw() {
  for(int i = 0; i < 100; i++){
  int x = round(random(width));
  int y = round(random(height));
  int t =int(map(mouseY, 0, height, 0, 255));
  int d =int(map(mouseX, 0, width, 0, 30));
  c = img.get(x, y);
  fill(c, t);
  ellipse(x, y, d, d);
  }
}
