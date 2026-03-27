int i;
int cant = 10;
  void setup() {
  size(800, 600);
  
}

void draw() {
  for (int i=0; i<cant; i++) {
    float px = width/cant;
    float py = i*px;
    line(py, 0, width/2, height/2);
    line(py, height, width/2, height/2);
  }
}
