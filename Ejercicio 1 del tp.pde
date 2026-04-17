int numBarras = 20;
float[] alturas;
float anchoBarra;

void setup() {
  size(800, 600);
  anchoBarra = width / (float)numBarras;
  alturas = new float[numBarras];
  for (int i = 0; i < numBarras; i++) {
    alturas[i] = height / 2;
  }
}

void draw() {
  background(30);
  if (mousePressed) {
    int indice = floor(mouseX / anchoBarra);
    if (indice >= 0 && indice < numBarras) {
      alturas[indice] = constrain(mouseY, 0, height);
    }
  }

  for (int i = 0; i < numBarras; i++) {
    float tono = map(alturas[i], 0, height, 255, 50);
    fill(100, tono, 250);
    stroke(255, 50);
    rect(i * anchoBarra, height, anchoBarra, - (height - alturas[i]));
  }
}
