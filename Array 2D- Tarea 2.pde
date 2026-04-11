int cols = 16;
int rows = 9;
int sizeX, sizeY;
boolean[][] estados;

void setup() {
  size(800, 450);
  sizeX = width / cols;
  sizeY = height / rows;
  estados = new boolean[cols][rows];
}

void draw() {
  background(220);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = i * sizeX;
      int y = j * sizeY;
      if (estados[i][j]) {
        dibujarEstampa(x, y, sizeX, sizeY);
      } else {
        fill(255);
        stroke(200);
        rect(x, y, sizeX, sizeY);
      }
    }
  }
}

void mousePressed() {
  int i = mouseX / sizeX;
  int j = mouseY / sizeY;

  if (i >= 0 && i < cols && j >= 0 && j < rows) {
    estados[i][j] = !estados[i][j];
  }
}
void dibujarEstampa(float x, float y, float w, float h) {
  pushMatrix();
  translate(x, y);
  fill(50, 100, 255); // Azul
  noStroke();
  rect(0, 0, w, h);
  stroke(255);
  strokeWeight(2);
  line(0, 0, w, h);
  line(w, 0, 0, h);
  noFill();
  ellipse(w/2, h/2, w * 0.6, h * 0.6);
  popMatrix();
}
