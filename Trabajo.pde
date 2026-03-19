void setup(){
  size(500,500);
}

void draw(){
  background(200,220,255);

  dibujarCasa(width/2, height*0.7);
}

void dibujarCasa(float x, float y){

  fill(200,100,100);
  rect(x-width*0.1, y-height*0.15, width*0.2, height*0.15);

  fill(150,50,50);
  triangle(
    x-width*0.12, y-height*0.15,
    x+width*0.12, y-height*0.15,
    x, y-height*0.3
  );

  fill(120,70,40);
  rect(x-width*0.025, y-height*0.05, width*0.05, height*0.05);

  fill(180,220,255);
  rect(x-width*0.06, y-height*0.1, width*0.04, height*0.04);
}
