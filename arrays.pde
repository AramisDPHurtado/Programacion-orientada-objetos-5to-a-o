int max = 10;

int[] px = new int[max];
int[] py = new int[max];

int indice = 0;
int cantidad = 0;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  for (int i = 0; i < cantidad; i++) {
    circle(px[i], py[i], 20);
  }
}

void mousePressed() {

  px[indice] = mouseX;
  py[indice] = mouseY;

  indice = (indice + 1) % max;

  if (cantidad < max) {
    cantidad++;
  }
}
