void setup() {
  size(800, 600);
}

void draw() {
  background(200);

  float cx = width/2;
  float cy = height/2;
  float r = width/4;
  float radio= random(100, 400)

    if (tocac(mouseX, mouseY, cx, cy, radio)) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }

  circle(cx, cy, radio*2);
}


boolean tocac(float px, float py, float cx, float cy, float radio) {
  float d = dist(px, py, cx, cy);
  if ( d > r) {
    return false;
  } else {
    return true;
  }
}
