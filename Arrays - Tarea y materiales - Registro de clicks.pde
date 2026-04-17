int numBarras = 20;
float[] alturas = new float[numBarras];
float anchoBarra;
void setup() {
  size(800, 400);
  anchoBarra = width / (float)numBarras;
}
void draw() {
  background(30);
  // Si el mouse está presionado, modificamos la altura de la barra
  if (mousePressed) {
    int i = floor(mouseX / anchoBarra);
    if (i >= 0 && i < numBarras) {
      // El valor guardado en el array es la altura
      alturas[i] = height - mouseY; 
    }
  }
  // Dibujar las barras usando el array
  for (int i = 0; i < numBarras; i++) {
    fill(0, 200, 255);
    stroke(0);
    // Dibujamos el rect desde el suelo hacia arriba
    rect(i * anchoBarra, height, anchoBarra, -alturas[i]);
  }
}
