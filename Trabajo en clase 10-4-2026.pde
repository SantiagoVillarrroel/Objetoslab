int cantfil = 15;
int cantcol = 15;
boolean [] [] fueclickeado;

void setup() {
  size(900, 600);
  fueclickeado = new boolean [cantfil][cantcol];
}

void draw() {
  float ancho = width/cantcol;
  float alto = height/cantfil;
  for (int i = 0; i < cantcol; i++) {
    for (int j = 0; j < cantfil; j++) {
      float x = i * ancho;
      float y = j * alto;
      float limiteDerecho = x + ancho;
      float limiteInf = y + alto;
      if(mousePressed){
      if ((x<mouseX) && (mouseX<limiteDerecho) && (y<mouseY) && (mouseY<limiteInf)) 
        fueclickeado[i][j] = true;
    }
  if (fueclickeado[i][j])fill(0);
   else fill(255);
    rect(x, y, ancho, alto);
  }
}
  }

