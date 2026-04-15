// array que guarda la altura de cada barra
float[] barras;

// cantidad de barras
int cantidad = 10;

void setup() {
  size(800, 400);
  
  // crear el array con la cantidad de barras
  barras = new float[cantidad];
  
  // inicializar todas las barras en 0
  for (int i = 0; i < cantidad; i++) {
    barras[i] = 0;
  }
}

void draw() {
  background(255); // limpiar pantalla

  // calcular ancho de cada barra
  float anchoBarra = width / cantidad;

  // recorrer el array
  for (int i = 0; i < cantidad; i++) {
    
    float x = i * anchoBarra; // posición en X
    float h = barras[i];      // altura de la barra
    
    // dibujar la barra desde abajo hacia arriba
    fill(100, 150, 255);
    rect(x, height - h, anchoBarra, h);
  }
}

// interacción con el mouse (al arrastrar)
void mouseDragged() {
  
  float anchoBarra = width / cantidad;

  // calcular qué barra se está tocando
  int indice = int(mouseX / anchoBarra);

  // verificar que esté dentro del rango
  if (indice >= 0 && indice < cantidad) {
    
    // calcular altura según mouse (invertido)
    float altura = height - mouseY;

    // limitar para que no se salga de la pantalla
    altura = constrain(altura, 0, height);

    // guardar la altura en el array
    barras[indice] = altura;
  }
}
