PVector pos, vel;
float d=40;

void setup() {
  size(800, 600);
  pos = new PVector(width/2, height/2);
  vel = new PVector(4, 3);
}
void draw() {
  pos.add(vel);
  vel.rotate(PI/300);
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
    println(pos.x, pos.y);
  circle(pos.x, pos.y, d);
}
