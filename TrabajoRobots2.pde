class Movil {
  int fila, col;
  float x, y, vx, vy;
  float left, right, top, bottom;
  
  Movil(int f, int c, float _left, float _right, float _top, float _bottom) {
    fila = f;
    col = c;
    left = _left;
    right = _right;
    top = _top;
    bottom = _bottom;
    
    x = random(left + 10, right - 10);
    y = random(top + 10, bottom - 10);
    vx = random(-3, 3);
    vy = random(-3, 3);
  }
  
  void mover() {
    x += vx;
    y += vy;
    if (x + 15 > right) { x = right - 15; vx = -vx; }
    if (x - 15 < left)  { x = left + 15; vx = -vx; }
    if (y + 15 > bottom) { y = bottom - 15; vy = -vy; }
    if (y - 15 < top)    { y = top + 15; vy = -vy; }
  }
  
  void mostrar() {
    fill(255, 255, 255);
    circle(x, y, 30);
    fill(0);
    fill(0);
  }
}

int filas = 3;
int columnas = 3;
Movil[][] estacionamiento;

void setup() {
  size(600, 500);
  estacionamiento = new Movil[filas][columnas];
  
  float anchoCelda = width / columnas;
  float altoCelda = height / filas;
  
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      float left = j * anchoCelda;
      float right = (j + 1) * anchoCelda;
      float top = i * altoCelda;
      float bottom = (i + 1) * altoCelda;
      
      estacionamiento[i][j] = new Movil(i, j, left, right, top, bottom);
    }
  }
}

void draw() {
  background(50);
  float anchoCelda = width / columnas;
  float altoCelda = height / filas;
  
  for (int i = 1; i < filas; i++) {
    line(0, i * altoCelda, width, i * altoCelda);
  }
  for (int j = 1; j < columnas; j++) {
    line(j * anchoCelda, 0, j * anchoCelda, height);
  }
  
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      estacionamiento[i][j].mover();
      estacionamiento[i][j].mostrar();
    }
  }
}
