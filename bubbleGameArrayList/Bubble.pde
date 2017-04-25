class Bubble {
  //data
  float x, y;
  float radius;
  float dy;
  PImage bubblePic;

  //constructor(s)
  Bubble() {
    x = random(width);
    y = height;
    radius = random(25, 75);
    dy = -1 * random(2, 5);
    bubblePic = loadImage("bubble.png");
  } 

  //behaviour
  void display() {
    //testing with ellipse
    //ellipse(x, y, radius*2, radius*2);
    imageMode(CENTER);
    image(bubblePic, x, y, radius*2, radius*2);
  }

  boolean checkIfClicked(float clickedX, float clickedY) {
    float distanceBetweenPoints = dist(clickedX, clickedY, x, y);
    if (distanceBetweenPoints < radius) {
      return true;
    } else {
      return false;
    }
  }

  void bubbleUp() {
    //move left or right   
    float dx = random(-2, 2);
    x += dx;

    //move up
    y += dy;

    //check if it's at the top of screen
    if (y <= 0+radius) {
      y = 0+radius;
      dy = 0;
    }
  }
}