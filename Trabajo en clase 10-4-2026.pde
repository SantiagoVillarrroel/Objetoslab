int cantfil = 15;
int cantcol = 9;
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
        rect(x, y, ancho, alto);
    }
  }
}
