class Movil {
  PVector pos, vel, acel;
  float d = 40;
  float angulo = 0;
  float aVel = 0;
  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-2, 2), random(-2, 2));
    acel = new PVector(0, 0);
  }
  void mostrar() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angulo);
    rectMode(CENTER);
    fill(255);
    rect(0, 0, d, d);
    popMatrix();
  }
  void mover() {
    vel.add(acel);
    pos.add(vel);
    aVel += acel.mag() * 0.1;
    angulo += aVel;
    aVel *= 0.95; 
    acel.mult(0);
    contener();
  }
  void contener() {
    if (pos.x > width || pos.x < 0) vel.x *= -1;
    if (pos.y > height || pos.y < 0) vel.y *= -1;
  }
  void agregarFuerza(PVector F) {
    acel.add(F);
  }
  void perseguir(Movil objetivo) {
    PVector dir = PVector.sub(objetivo.pos, this.pos);
    dir.normalize();
    dir.mult(0.2);
    agregarFuerza(dir);
  }
  boolean choca(Movil otro) {
    return dist(pos.x, pos.y, otro.pos.x, otro.pos.y) < (d/2 + otro.d/2);
  }
}
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Movil m1, m2;
PVector gravedad = new PVector(0, 0.1);

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
    m1.vel.mult(-1); m2.vel.mult(-1);
    m1.d = max(10, m1.d - 2); m2.d = max(10, m2.d - 2);
  }
  m1.mover(); m2.mover();
  m1.mostrar(); m2.mostrar();
}
