class Movil {
  PVector pos, vel, acel;
  float d = 60; 
  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-2, 2), 0);
    acel = new PVector(10, 10);
  }
  void mostrar() {
    rectMode(CENTER);
    fill(255);
    rect(pos.x, pos.y, d, d);
  }
  void mover() {
    vel.add(acel);
    pos.add(vel);
    if (pos.x > width || pos.x < 0) vel.x *= -1;
    if (pos.y > height - d/2) {
      pos.y = height - d/2;
      vel.y *= -0.9;
    }
    acel.mult(0); 
  }
  void agregarFuerza(PVector F) {
    acel.add(F);
  }
  boolean choca(Movil otro) {
    return dist(pos.x, pos.y, otro.pos.x, otro.pos.y) < (this.d/2 + otro.d/2);
  }
}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Movil m1, m2;
PVector gravedad = new PVector(0, 0.2);
void setup() {
  size(800, 600);
  m1 = new Movil(200, 100);
  m2 = new Movil(600, 100);
}
void draw() {
  background(50);
  m1.agregarFuerza(gravedad);
  m2.agregarFuerza(gravedad);
  if (m1.choca(m2)) { 
    PVector empuje = PVector.sub(m1.pos, m2.pos);
    empuje.normalize();
    empuje.mult(5);
    m1.agregarFuerza(empuje);
    m2.agregarFuerza(PVector.mult(empuje, -1));
    m1.d = max(10, m1.d - 2);
    m2.d = max(10, m2.d - 2);
  }
  m1.mover();
  m2.mover();
  m1.mostrar();
  m2.mostrar();
}
