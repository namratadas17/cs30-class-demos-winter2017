float x, y, z;
float rotatingInY;
boolean flipping;

void setup() {
  size(600, 600, P3D);
  x = width/2;
  y = height/2;
  z = 0;
  rotatingInY = 0;
  flipping = false;
}

void draw() {
  background(0);
  translate(x, y, z);
  flipBox();
  rotateX(PI/3);
  float rotatingInZ = map(mouseY, 0, height, -PI, PI);
  //float rotatingInY = map(mouseX, 0, width, -PI, PI);
  rotateZ(PI/3);
  rotateY(rotatingInY);
  
  box(100);
}


void flipBox() {
  if (flipping) {
    rotatingInY += 0.1;
    if (rotatingInY > PI/2) {
      rotatingInY = 0;
      flipping = false;
    }
  }
}

void mousePressed() {
  flipping = true;
}