// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 5-9: Simple Gravity

float x, y, speed, squareSize, gravity;  

void setup() {
  size(200, 200);
  x = 100;
  y = 0;
  speed = 0;
  squareSize = 20;
  gravity = 0.1;
}

void draw() {
  background(255);

  // Display the square
  fill(175);
  stroke(0);
  rectMode(CENTER);
  rect(x, y, squareSize, squareSize);

  // Add speed to location.
  y = y + speed;

  // Add gravity to speed.
  speed = speed + gravity;

  // If square reaches the bottom
  // Reverse speed
  if (y >= height-squareSize/2) {
    // Multiplying by -0.95 instead of -1 slows the square down each time it bounces (by decreasing speed).  
    // This is known as a "dampening" effect and is a more realistic simulation of the real world (without it, a ball would bounce forever).
    speed = int(speed * -0.95);  //avoid those fractional problems...
  }
  
  //stop the continual bouncing...
  if ((y >= height-squareSize/2) && (abs(speed) <= 1)) {
    speed = 0;
  }

  //don't fall out of the screen
  y = constrain(y, 0, height-squareSize/2);

  println("y: " + y + "\tspeed: " + speed);
}