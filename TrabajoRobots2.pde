class Movil {
  PVector pos, vel;
  int fila, col;
  int r = 50;
  Movil(int f, int c) {
    this.fila = f;
    this.col = c;
    float x = 100 + (c * 200);
    float y = 100 + (f * 200);
    pos = new PVector(x, y);
    vel = new PVector(random(-2, 2), random(-2, 2));
  }
  void mover() {
    pos.add(vel);
    contener();
  }
  void mostrar() {
    fill(255);
    ellipse(pos.x, pos.y, r, r);
  }
  void contener() {
    if (pos.x < 0 || pos.x > width) vel.x *= -1;
    if (pos.y < 0 || pos.y > height) vel.y *= -1;
  }
}
//----------------------------------------------------------------------------------------------------------------------------------------
int filas = 2;
int cols = 3;
Movil[][] estacionamiento = new Movil[filas][cols];
void setup() {
  size(600, 400);
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < cols; j++) {
      estacionamiento[i][j] = new Movil(i, j);
    }
  }
}
void draw() {
  background(50);
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < cols; j++) {
      estacionamiento[i][j].mover();
      estacionamiento[i][j].mostrar();
    }
  }
}
