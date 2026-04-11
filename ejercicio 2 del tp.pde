int cols = 15;
int rows = 15;
float w, h;

boolean[][][] laberinto = new boolean[cols][rows][3];

void setup() {
  size(900, 600);
  w = (float) width / cols;
  h = (float) height / rows;
  generarLaberinto();
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(2);

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = i * w;
      float y = j * h;
      
      if (laberinto[i][j][0]) line(x, y, x + w, y);      
      if (laberinto[i][j][1]) line(x + w, y, x + w, y + h); 
      if (laberinto[i][j][2]) line(x, y, x + w, y + h);    
     
      if (i == 0) line(x, y, x, y + h); 
      if (j == rows - 1) line(x, y + h, x + w, y + h);
    }
  }
}

void generarLaberinto() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      laberinto[i][j][0] = random(1) > 0.5;
      laberinto[i][j][1] = random(1) > 0.5;
      laberinto[i][j][2] = random(1) > 0.8;
    }
  }
}

void keyPressed() {
  generarLaberinto();
}
