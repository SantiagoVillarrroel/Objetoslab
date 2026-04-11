int size = 20; 
int cols, rows;
float[][] grid; 

void setup() {
  size(800, 600);   
  cols = width / size;
  rows = height / size;
 grid = new float[cols][rows];
}

void draw() {
  background(0);
  actualizarMatriz();
  dibujarGrilla();
}

void actualizarMatriz() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float centerX = i * size + size / 2.0f;
      float centerY = j * size + size / 2.0f;
      float d = dist(mouseX, mouseY, centerX, centerY);
      grid[i][j] = d;
    }
  }
}

void dibujarGrilla() {
  float maxDist = 300.0f; 
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float valorGris = map(grid[i][j], 0, maxDist, 255, 0);
      valorGris = constrain(valorGris, 0, 255); 
      fill(valorGris);
      noStroke();
      rect(i * size, j * size, size, size);
    }
  }
}
