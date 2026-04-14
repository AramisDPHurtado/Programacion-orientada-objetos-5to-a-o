boolean[][] estados;
int columnas = 15;
int filas = 15;

void setup() {
  size(800, 800);
  estados = new boolean[filas][columnas]; 
}

void draw() {
  float ancho = width / columnas;
  float alto = height / filas;

  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      float x = j * ancho;
      float y = i * alto;
      if (estados[i][j] == false) {
        fill(255);
        noStroke();
        rect(x, y, ancho, alto);
      } else {
        dibujarEstampa(x, y, ancho, alto);
      }

      stroke(200);
      noFill();
      rect(x, y, ancho, alto);
    }
  }
}
void mousePressed() {
  float ancho = width / columnas;
  float alto = height / filas;
  int col = int(mouseX / ancho);
  int fil = int(mouseY / alto);
  if (fil >= 0 && fil < filas && col >= 0 && col < columnas) {
    estados[fil][col] = !estados[fil][col]; 
  }
}
void dibujarEstampa(float x, float y, float w, float h) {
  stroke(0);
  fill(25, 80, 150);
  rect(x, y, w, h);
  fill(0, 160, 120);
  ellipse(x + w/2, y + h/2, w, h);
  fill(255, 200, 0);
}
