void setup() {
  size(800, 800);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw() {
  background(255);

  if (mousePressed) {
    composicion(mouseX, mouseY, 100, 100);
  }
}

void composicion(float posicionX, float posicionY, float ancho, float alto) {

  strokeWeight(2);
  fill(200, 100);
  rect(posicionX, posicionY, ancho, alto);

  noFill();
  ellipse(posicionX, posicionY, ancho * 0.8, alto * 0.8);

  line(posicionX - ancho/2, posicionY, posicionX + ancho/2, posicionY);
  line(posicionX, posicionY - alto/2, posicionX, posicionY + alto/2);

  ellipse(posicionX, posicionY, ancho * 0.3, alto * 0.3);
}
