int maxPuntos = 10;
float[] posX = new float[maxPuntos];
float[] posY = new float[maxPuntos];
int indiceActual = 0;
int puntosRegistrados = 0;

void setup() {
  size(800, 600);
  background(30);
  noStroke();
  fill(0, 200, 255);
}

void draw() {
  background(30);
  int limite = min(puntosRegistrados, maxPuntos);
  for (int i = 0; i < limite; i++) {
  ellipse(posX[i], posY[i], 30, 30);
   fill(255);
    textAlign(CENTER, CENTER);
    text(i + 1, posX[i], posY[i]);
    fill(0, 200, 255);
  }
}

void mousePressed() {
  posX[indiceActual] = mouseX;
  posY[indiceActual] = mouseY;
  indiceActual = (indiceActual + 1) % maxPuntos;
    puntosRegistrados++;
}
