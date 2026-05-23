//Ejercicio 1
int[] lecturas =new int[40];
void setup() {
  size(800, 600);
  for (int i=0; i<lecturas.length; i++) {
    lecturas[i] = int(random(50, height-50));
  }
}
void draw() {
  background(20);
  dibujarGrafica();
  float promedio=calcularPromedio(lecturas);
  stroke(255, 0, 0);
  line(0, height-promedio, width, height-promedio);
  textSize(20);
  text("Ritmo Cardiaco Promedio: "+promedio, 20, 30);
}
void dibujarGrafica() {
  stroke(0, 255, 0);
  strokeWeight(5);
  noFill();
  float espacioX =width/ (float)(lecturas.length-1);
  beginShape();
  for (int i=0; i<lecturas.length; i++) {
    float x = i*espacioX;
    float y = height-lecturas[i];
    vertex(x, y);
  }
  endShape();
}
float calcularPromedio(int[] datos) {
  float suma = 0;
  for (int i = 0; i < datos.length; i++) {
    suma=suma+datos[i];
  }
  return suma/datos.length;
}
