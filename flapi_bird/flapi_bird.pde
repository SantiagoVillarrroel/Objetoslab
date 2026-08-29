 float UltimoPar=0;
PVector G=new PVector(0,2);
ArrayList<Cuadrado> tubos;
Pelota bird;
void setup(){
  size(800, 600);
  tubos=new ArrayList<Cuadrado>();
  bird=new Pelota(100, height/2);
}

void draw(){
  Agregartubos();
  bird.addFuerza(6);
  bird.mover();
  borrartubos();
  for(Cuadrado t : tubos){
    t.mover();
    t.mostrar();
  }
  bird.mostrar();
}
void keyPressed(){
  if(key=="w"){
    bird.saltar();
  }
}
