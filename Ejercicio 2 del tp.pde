int cols = 15;
int rows = 15;
float sizeX, sizeY;
boolean[][][] laberinto; 
void setup() {
  size(800, 600);
  sizeX = width / cols;
  sizeY = height / rows;
  laberinto = new boolean[cols][rows][6]; 
  generarLaberintoAleatorio();
}

void draw() {
  background(255); 
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      dibujarCelda(i, j);
    }
  }
}
void generarLaberintoAleatorio() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      for (int k = 0; k < 6; k++) {
        laberinto[i][j][k] = random(1) < 0.3; 
      }
    }
  }
}
void dibujarCelda(int i, int j) {
  float x = i * sizeX;
  float y = j * sizeY;
  stroke(0); 
  strokeWeight(2);
  if (laberinto[i][j][0]) line(x, y, x + sizeX, y);             
  if (laberinto[i][j][1]) line(x + sizeX, y, x + sizeX, y + sizeY); 
  if (laberinto[i][j][2]) line(x, y + sizeY, x + sizeX, y + sizeY); 
  if (laberinto[i][j][3]) line(x, y, x, y + sizeY);             
  if (laberinto[i][j][4]) line(x, y, x + sizeX, y + sizeY);     
  if (laberinto[i][j][5]) line(x + sizeX, y, x, y + sizeY);     
}
void keyPressed() {
  generarLaberintoAleatorio();
}
