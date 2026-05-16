Movil m;
Movil otro;
Movil bola3;
Movil bola4;
void setup() {
  size(800, 600);
  
  m = new Movil(width/2, height/2);
  otro = new Movil(100, 300);
  bola3 = new Movil(500, 400); 
  bola4 = new Movil(600, 500);
}
void draw() {
  background(20);
  m.mover();
  m.contener();
  otro.contener();
  bola3.contener();
  bola4.contener();
  bola3.mover();
  bola4.mover();
  otro.mover();
  m.mostrar();
  otro.mostrar();
  bola3.mostrar();
  bola4.mostrar();
}
--------------------------------------------------------------------
class Movil{
  PVector pos;
  PVector vel = new PVector(4, 3);
  float d=40;
  Movil(float origenX, float origenY){
    pos = new PVector(origenX, origenY);
  }
  void mostrar(){
    fill(255, 0, 0);
    circle(pos.x, pos.y, d); 
  }
  void contener(){
      if (pos.y<height){
    vel.y=vel.y*-1;
  }
  if (pos.y>height-height) {
    vel.y=vel.y*-1;
  }
    if(pos.x<width){
      vel.x=vel.x*-1;
    }
    if(pos.x>width-width){
      vel.x=vel.x*-1;
    }
  }
 void mover(){
   pos.add(vel);
   vel.rotate(PI/300);
}
}
