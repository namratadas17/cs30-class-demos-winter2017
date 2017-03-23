//global variables
int x, y, speed, rectSize;
int state;

void setup() {
  size(203, 321);
  x = 0;
  y = 0;
  speed = 6;
  state = 0;
  rectSize = 30;
}

void draw() {
  background(255);
  rect(x, y, rectSize-1, rectSize-1);

  if (state == 0) { //moving right
    x += speed;
    if (x > width - rectSize) {
      x = width - rectSize;  //don't ever go further right than this...
      state = 1;
    }
  }
  
  if (state == 1) { //moving down
    y += speed;
    if (y > height - rectSize) {
      y = height - rectSize;  //don't ever go further down than this...
      state = 2;
    }
  }
  
  if (state == 2) { //moving left
    x -= speed;
    if (x < 0 ) {
      x = 0;  //don't ever go further left than this...
      state = 3;
    }
  }
  
  if (state == 3) { //moving up
    y -= speed;
    if (y < 0 ) {
      y = 0;  //don't ever go further up than this...
      state = 0;
    }
  }
}