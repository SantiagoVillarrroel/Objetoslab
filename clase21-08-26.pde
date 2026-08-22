PImage img;

void setup() {
  size(800, 600); noStroke();
  img = loadImage("data/perro.jpg");
}
void draw() {
  int X = int (random(width));
  int Y = int (random(height));
  int t = int (map(mouseY, 0, height, 0, 255));
  int d = int (map(mouseX, 0, width, 0, 30));
  color c = img.get(X, Y);
  fill(c, t);
  ellipse(X, Y, d, d);
}

//---------------------------------------------------------------------------------------------------------------------------------
PImage img; color c;
  void setup(){
    size(800, 600);
  img = loadImage("data/perro.jfif");
  }
   void draw(){
     image(img, 0, 0);
     c = img.get(mouseX, mouseY);
     fill(c);
    rect(mouseX, mouseY, 30, 30);
  }
