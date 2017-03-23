//Bouncing Ball Example - Modified
//Mar 3, 2017

int x, y;
int xSpeed, ySpeed;
int radius;

void setup() {
  size(600, 600);

  //give global variables values
  x = width/2;
  y = height/2;
  xSpeed = int(random(3, 9));
  ySpeed = int(random(3, 9));
  radius = 100;
}

void draw() {
  background(255);

  // Add the current speed to the location.
  x += xSpeed;
  y += ySpeed;

  // Remember, || means "or."
  if ((x > width-radius) || (x < 0+radius)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    xSpeed = xSpeed * -1;
  }
  if ((y > height-radius) || (y < 0+radius)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    ySpeed = ySpeed * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x, y, radius*2, radius*2);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    //speed up
    xSpeed *= 1.25;
    ySpeed *= 1.25;
  } else if (mouseButton == RIGHT) {
    //slow down
    if ( abs(xSpeed) > 4 ) {
      xSpeed *= 0.75;
    }
    if ( abs(ySpeed) > 4 ) {
      ySpeed *= 0.75;
    }
  }

  xSpeed = constrain(xSpeed, -15, 15);
  ySpeed = constrain(ySpeed, -15, 15);
}