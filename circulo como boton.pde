void setup() {
  size(800, 600);
}

void draw() {
  if (estatocandoelcirculo()) fill(255, 60, 60);
  else fill(255);
  circle (width/2, height/2, width/2);
}

boolean estatocandoelcirculo() {
  float r = width/4;
  float d = dist(mouseX, mouseY, width/2, height/2);
  if (d>r) return false;
  else return true;
}
