//Bouncing ball demo
//Dan Schellenberg
//Sept 28, 2016
//Comp Sci 30

import ddf.minim.*;

Ball theBall;

void setup() {
  size(600, 600);
  theBall = new Ball(this);
}

void draw() {
  background(255);
  theBall.move();
  theBall.display();
}