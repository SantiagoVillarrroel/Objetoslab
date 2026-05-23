//Ejercicio 2
int tamanoCelda = 40;
int columnas;
int filas;
int[][] mapa;
void setup() {
  size(800, 600);
  columnas =width/tamanoCelda;
  filas =height/tamanoCelda;
  mapa = new int[columnas][filas];
  for (int i =0; i<columnas; i++) {
    for (int j =0; j<filas; j++) {
      mapa[i][j] =int(random(256));
    }
  }
}
void draw() {
  background(0);
  for (int i =0; i<columnas; i++) {
    for (int j =0; j<filas; j++) {
      fill(mapa[i][j]);
      stroke(100);
      rect(i *tamanoCelda, j*tamanoCelda, tamanoCelda, tamanoCelda);
    }
  }
}
void mousePressed() {
  int i = mouseX/tamanoCelda;
  int j = mouseY /tamanoCelda;
  if (i >=0 && i <columnas && j >=0 && j<filas) {
    mapa[i][j] = mapa[i][j]+25;
    if (mapa[i][j] >255) {
      mapa[i][j] =255;
    }
  }
}
