boolean[][][] celdas;

int cantFil = 20;
int cantCol = 20;

void setup() {
  size(800, 800);
  celdas = new boolean[cantFil][cantCol][6];

  for (int i = 0; i < cantFil; i++) {
    for (int j = 0; j < cantCol; j++) {
      for (int k = 0; k < 6; k++) {
        celdas[i][j][k] = random(1) > 0.5;
      }
    }
  }
}

void draw() {
  background(255);

  float ancho = width / cantCol;
  float alto = height / cantFil;

  for (int i = 0; i < cantFil; i++) {
    for (int j = 0; j < cantCol; j++) {

      float x = j * ancho;
      float y = i * alto;

      stroke(0);

      if (celdas[i][j][0]) {
        line(x, y, x + ancho, y);
      }

      if (celdas[i][j][1]) {
        line(x, y + alto, x + ancho, y + alto);
      }

      if (celdas[i][j][2]) {
        line(x, y, x, y + alto);
      }

      if (celdas[i][j][3]) {
        line(x + ancho, y, x + ancho, y + alto);
      }

      if (celdas[i][j][4]) {
        line(x, y, x + ancho, y + alto);
      }

      if (celdas[i][j][5]) {
        line(x + ancho, y, x, y + alto);
      }
    }
  }
}
