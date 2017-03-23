//Bouncing ball demo
//Dan Schellenberg
//Sept 28, 2016
//Comp Sci 30

//Challenge(s):
//- speed up the ball when mouse button pressed
//- slow down the ball if mouse button released
//- change the size of the ball using the mouseWheel

import ddf.minim.*;

Minim minim;
AudioPlayer player;

float x, y;
float xSpeed, ySpeed;
float circleRadius;

void setup() {
  size(600, 600);
  x = width/2;
  y = height/2;
  xSpeed = random(2, 5);
  ySpeed = random(2, 5);
  circleRadius = 20;
  
  minim = new Minim(this);
  player = minim.loadFile("pop.wav");
}

void draw() {
  background(255);
  
  //movement
  x = x + xSpeed;
  y = y + ySpeed;
  
  if (x + circleRadius >= width || x - circleRadius <= 0) {
    xSpeed = xSpeed * -1;  //switching the direction
    player.rewind();
    player.play();
  }
  if (y + circleRadius >= height || y - circleRadius <= 0) {
    ySpeed = ySpeed * -1;
    player.rewind();
    player.play();
  }
  
  
  //display
  fill(0);
  ellipse(x, y, 2*circleRadius, 2*circleRadius);
}