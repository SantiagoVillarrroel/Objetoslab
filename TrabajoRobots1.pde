class Movil {
  float x, y, velY;
  float izq, der; 
  int id;
  
  Movil(int _id, float _x, float _y, float _izq, float _der) {
    id = _id;
    x = _x;
    y = _y;
    izq = _izq;
    der = _der;
    velY = random(2, 4);
  }
  
  void mover() {
    y += velY;
    if (y + 15 > height || y - 15 < 0) velY = -velY;
  }
  
  void mostrar() {
    circle(x, y, 30);
    fill(0);
    circle(x - 6, y - 4, 5);
    circle(x + 6, y - 4, 5);
    fill(255);
    fill(0);
  }
}

int n = 5;
Movil[] robots;

void setup() {
  size(600, 400);
  robots = new Movil[n];
  
  float anchoCarril = width / n;
  for (int i = 0; i < n; i++) {
    float centroX = i * anchoCarril + anchoCarril/2;
    float izquierda = i * anchoCarril;
    float derecha = (i + 1) * anchoCarril;
    robots[i] = new Movil(i+1, centroX, height/2, izquierda, derecha);
  }
}

void draw() {
  background(220);
  float anchoCarril = width / n;
  for (int i = 1; i < n; i++) {
    line(i * anchoCarril, 0, i * anchoCarril, height);
  }
  
  for (int i = 0; i < n; i++) {
    robots[i].mover();
    robots[i].mostrar();
  }
}
