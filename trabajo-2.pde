float radio;
float cx;
float cy;
float r;

void setup() {
  size(800, 600);
  cx = random (width);
  cy = random (height);
  radio = random (100,400);
}
void draw() {
  background(200);


  if (tocac (mouseX, mouseY, cx, cy, radio)) {
    fill(255, 60, 60);
  } else {
    fill(255);
  }
  circle(cx, cy, radio*2);
}


boolean tocac(float px, float py, float cx, float cy, float radio) {

  float d = dist(px, py, cx, cy);
  if ( d > radio) {
    return false;
  } else {
    return true;
  }
}

