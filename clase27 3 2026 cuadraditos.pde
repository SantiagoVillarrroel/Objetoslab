int cant = 10;
int filas = 10;
float sepX, sepX2 , SepY, SepY2;
void setup() { 
  size(800, 600);
}
void draw(){
  for(int i=0; i<cant; i++){
   for(int j=0; j<filas; j++){
     sepX2=width/cant;
     sepX=j*sepX2;
     SepY=height/cant;
     SepY2=i*SepY;
     rect(sepX, SepY2, sepX2, SepY);
   }
  }
}
