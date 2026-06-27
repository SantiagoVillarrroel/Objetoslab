class pelota {
  
  PVector pos;
  PVector vel;
  float r = 10;
  color c = color(255);

  pelota() {
    pos= new PVector(width/2, height/2);
    vel= new PVector( 1, 1);
  }
    void mover() {
      pos.add(vel);
      rebotar();
      reinicio();
    }
    void mostrar() {
      fill(c);
      circle(pos.x, pos.y, r);
    }
    void rebotar() {
      if (pos.y>height-r||pos.y<r) {
        vel.y = vel.y*-1;
      }
    }
    void reinicio(){
      if(pos.x>width-r|| pos.x<r){
        pos= new PVector(width/2, height/2);
      }
  }
}
//---------------------------------------------------------------------------------------------------------------------
pelota p;

void setup() {
  size(800, 600);
  p= new pelota();
}
void draw() {
  background(0);
  p.mover();
  p.mostrar();
}
