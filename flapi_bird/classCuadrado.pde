class Cuadrado{
  PVector pos;
  float ancho;
  float alto;
  
  Cuadrado(float X, float Y, float w, float h){
    pos = new PVector(X,Y);
    ancho = w;
    alto = h;
  }
  void mover(){
    pos.X -=3;
  }
  void mostrar(){
    fill(0, 255, 0);
    rect(pos.X, pos.Y, ancho, alto);
  }
}
