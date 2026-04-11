int cantFil = 15;
int cantCol = 15;

float[][] distancias;

void setup() {
  size(900, 600);
  distancias = new float[cantFil][cantCol];
}

void draw() {
  float ancho = width / cantCol;
  float alto = height / cantFil;
  
  float maxDist = dist(0, 0, width, height); 
  
  for (int i = 0; i < cantCol; i++) {
    for (int j = 0; j < cantFil; j++) {
      
      float x = i * ancho;
      float y = j * alto;      
      float cx = x + ancho / 2;
      float cy = y + alto / 2;      
      float d = dist(mouseX, mouseY, cx, cy);
      distancias[i][j] = d;
      

      float gris = map(d, 0, maxDist, 255, 0);
      
      fill(gris);
      rect(x, y, ancho, alto);
    }
  }
}
