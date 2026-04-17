int numBarras = 20;
float[] alturas = new float[numBarras];
float anchoBarra;
void setup() {
  size(800, 400);
  anchoBarra = width / (float)numBarras;
}
void draw() {
  background(30);
  if (mousePressed) {
    int i = floor(mouseX / anchoBarra);
    if (i >= 0 && i < numBarras) {
      alturas[i] = height - mouseY; 
    }
  }
  for (int i = 0; i < numBarras; i++) {
    fill(0, 200, 255);
    stroke(0);
    rect(i * anchoBarra, height, anchoBarra, -alturas[i]);
  }
}
