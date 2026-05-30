class Movil {
  PVector pos, vel;
  float izq, der;
  Movil(float x, float y, float izq2, float der2) {
    pos = new PVector(x, y);
    vel = new PVector(0, random(2, 4));
    izq = izq2;
    der = der2;
  }
  void mover() {
    pos.add(vel);
    if (pos.y + 15 > height || pos.y - 15 < 0) {
      vel.y*=-1;
    }
  }
  void mostrar() {
    fill(255);
    circle(pos.x, pos.y, 30);
    fill(255);
  }
}
--------------------------------------------------------------------------------------------------------------------------------------------
int n = 5;
Movil[] robots;
void setup() {
  size(800, 600);
  robots = new Movil[n];
  float anchoCarril = width / (float)n;
  for (int i = 0; i < n; i++) {
    float centroX = i * anchoCarril + anchoCarril / 2;
    float izquierda = i * anchoCarril;
    float derecha = (i + 1) * anchoCarril;
    robots[i] = new Movil(centroX, height / 2, izquierda, derecha);
  }
}
void draw() {
  background(120);
  float anchoCarril = width / (float)n;
  for (int i = 1; i < n; i++) {
    line(i * anchoCarril, 0, i * anchoCarril, height);
  }
  for (int i = 0; i < n; i++) {
    robots[i].mover();
    robots[i].mostrar();
  }
}
