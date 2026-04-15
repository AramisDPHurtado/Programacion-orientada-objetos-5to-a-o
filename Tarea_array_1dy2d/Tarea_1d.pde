
float[] barras;

int cantidad = 10;

void setup() {
  size(800, 400);
  barras = new float[cantidad];
  for (int i = 0; i < cantidad; i++) {
    barras[i] = 0;
  }
}

void draw() {
  background(255);
  float anchoBarra = width / cantidad;
  for (int i = 0; i < cantidad; i++) {
    float x = i * anchoBarra;
    float h = barras[i];
    fill(100, 150, 255);
    rect(x, height - h, anchoBarra, h);
  }
}


void mouseDragged() {
  float anchoBarra = width / cantidad;
  int indice = int(mouseX / anchoBarra);
  if (indice >= 0 && indice < cantidad) {
    float altura = height - mouseY;
    altura = constrain(altura, 0, height);
    barras[indice] = altura;
  }
}
