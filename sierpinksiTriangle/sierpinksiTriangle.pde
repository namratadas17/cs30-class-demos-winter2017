//Sierpinski Triangle generator
//Apr 28, 2017
//Dan Schellenberg

//based on this video from Numberphile: https://www.youtube.com/watch?v=kbKtFN71Lfs

float x1, y1, x2, y2, x3, y3;
float startX, startY, newX, newY;

void setup() {
  size(800, 800);
  background(255);
  
  //determine random starting points
  x1 = 0;
  y1 = height;
  x2 = width;
  y2 = height;
  x3 = (width)/2;
  y3 = 0;
  startX = random(width);
  startY = random(height);
  newX = startX;
  newY = startY;
  
  //draw initial points
  point(x1, y1);
  point(x2, y2);
  point(x3, y3);
  point(startX, startY);
  
}

void draw() {
  //pick which point on the triangle to move toward
  float picker = random(100);
  if (picker < 33) {
    newX = midpoint(newX, x1);
    newY = midpoint(newY, y1);
  }
  else if (picker < 66) {
    newX = midpoint(newX, x2);
    newY = midpoint(newY, y2);
  }
  else {
    newX = midpoint(newX, x3);
    newY = midpoint(newY, y3);
  }
  
  point(newX, newY);
}


float midpoint(float first, float second) {
  return (first + second)/2;
}