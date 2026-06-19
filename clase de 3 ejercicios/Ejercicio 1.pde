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
//--------------------------------------------------------------------------------------------------------------------------------------
Movil m;
void setup() { size(800, 600); m = new Movil(400, 300); }
void draw() {
  background(50);
  if (mousePressed) {
    PVector f = new PVector(random(-0.5, 0.5), random(-0.5, 0.5));
    m.agregarFuerza(f);
  }
  m.mover();
  m.mostrar();
}
