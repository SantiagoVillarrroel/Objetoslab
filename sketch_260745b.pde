int xprev=0;
int yprev=0;
int rx=0;
int ry=0;
void setup() {
  size(800, 600);
  //frameRate(1000);
}
void setear_linea(){
 stroke (1,274,374);
 strokeWeight (50);
}

void ImprimirCuatroLineas() {
  //background(255,30,80);
  //line( mouseX , mouseY , 500 , 200);
  //line( mouseX,mouseY,mouseX,mouseY);
  if (mousePressed) {
    line(mouseX, mouseY, xprev, yprev);
    line(width-mouseX, mouseY, width-rx, ry);
    line(mouseX, height-mouseY, xprev, height-yprev);
    line(width-mouseX, height-mouseY, width-rx, height-ry);
  }

  //else{
  //background(255,30,80);
  xprev=mouseX;
  yprev=mouseY;
  rx=mouseX;
  ry=mouseY;
}

void draw(){
 setear_linea();
 ImprimirCuatroLineas();
}
