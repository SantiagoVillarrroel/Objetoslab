void Agregartubos(){
  float tActual= millis();
  float dt = tActual-UltimoPar;
  if(dt>5000){
    tubos.add(new Cuadrado ());
    tubos.add(new Cuadrado ());
    UltimoPar = tActual;
  }
}

void borrartubos(){
  for(int i = tubos.size()-1; i>=0; i--){
    Cuadrado Aux = tubs.get(i);
    if(Aux.pos.X<0){
      tubos.remove(i);
    }
  }
