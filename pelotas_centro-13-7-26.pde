PVector centro;
float radioCentral = 150;
Pelota [] pelotas;
int cantidad = 20;
void setup() {
  size(800, 600);
  centro = new PVector(width/2, height/2);
  pelotas = new Pelota [cantidad];
  for (int i =0; i < cantidad; i++) {
    pelotas[i] = new Pelota();
  }
}

void draw() {
  background(30);
  ellipse(centro.x, centro.y, radioCentral * 2, radioCentral * 2);

  for (int i = 0; i < cantidad; i++) {
    pelotas[i].mover();
    pelotas[i].mostrar();
  }
}
//----------------------------------------------------------------------------------------------------------------------------------
class Pelota{
  PVector posicion;
  PVector velocidad;
  float radioPelota = 10;
  
  Pelota() {
    posicion = new PVector(random(width), random(height));
    velocidad = new PVector(random(-3, 3), random(-3, 3));
  }
  void mover(){
    posicion.add(velocidad);
    if(posicion.x < 0 || posicion.x > width) velocidad.x *=-1;
    if(posicion.y < 0 || posicion.y > height) velocidad.y *=-1;
  }
  void mostrar(){
    float distancia = PVector.dist(posicion, centro);
    if(distancia < radioCentral){
      fill(0);
      stroke(255);
      ellipse(posicion.x, posicion.y, radioPelota * 2, radioPelota *2);
    }
  }
}
