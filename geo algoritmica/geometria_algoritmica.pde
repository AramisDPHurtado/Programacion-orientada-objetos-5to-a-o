int cant = 10;
int sepx, sepy;
void setup() {
  size(800, 600);
  sepx = width/cant;
  sepy = height/cant;
}

void draw() {
  background(255);
  for (int i = 0; i<cant; i++) {
    //vertice inferior izquierdo
    line(0, i*sepy, i*sepx, height);
    //vertice superior derecho
    line(width, i*sepy, i*sepx, 0);
    //vertice superior izquierdo
    line(0,i*sepy,width-i*sepx,0);
    //vertice inferior derecho
    line(width,i*sepy,width-i*sepx,height);
  }
}
