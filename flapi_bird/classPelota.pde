class Pelota { 
  PVector pos;
  PVector vel;
  PVector acc;
  float radio;
  pelota(float X, float Y){
    pos = new PVector (X, Y);
    vel = new PVector (0, 0);
    acc = new PVector (0, 0);
    radio = 30;
  }
  void addFuerza(PVector fuerza) {
    acc.add(fuerza);
  }
  void addFuerza(PVector fuerza) {
    acc.add(fuerza);
  }
  void mover(){
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }
  void mostrar(){
    fill(255, 0, 0);
    ellipse(pos.X, pos.Y, radio, radio);
  }
  void saltar(){
    vel.Y = -10;
  }
}
