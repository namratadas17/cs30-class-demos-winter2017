class Ball {
  //data
  int x, y;
  int xSpeed, ySpeed;
  int radius;
  color fillColor;

  //constructor(s)
  Ball() {
    radius = 100;
    x = int( random( 0+radius, width-radius) );
    y = int( random( 0+radius, height-radius) );
    xSpeed = int(random(3, 9));
    ySpeed = int(random(3, 9));
    fillColor = color(175);
  }

  //behaviour
  void display() {
    // Display circle at x location
    stroke(0);
    fill(fillColor);
    ellipse(x, y, radius*2, radius*2);
  }

  void move() {
    // Add the current speed to the location.
    x += xSpeed;
    y += ySpeed;

    bounceOnEdge();
  }

  void bounceOnEdge() {
    // Remember, || means "or."
    if ((x >= width-radius) || (x <= 0+radius)) {
      // If the object reaches either edge, multiply speed by -1 to turn it around.
      xSpeed = xSpeed * -1;
    }
    if ((y >= height-radius) || (y <= 0+radius)) {
      // If the object reaches either edge, multiply speed by -1 to turn it around.
      ySpeed = ySpeed * -1;
    }
  }
  
  void constrainToScreen() {
    x = constrain(x, 0+radius, width-radius);
    y = constrain(y, 0+radius, height-radius);
  }
  
  void checkForCollision(Ball someOtherBall) {
    float distanceBetweenBalls = dist(x, y, someOtherBall.x, someOtherBall.y);
    float sumOfRadii = radius + someOtherBall.radius;
    
    if (distanceBetweenBalls <= sumOfRadii) {
      //they have collided!!
      fillColor = color(255, 0, 0);
      someOtherBall.fillColor = color(255, 0, 0);
      
      //react to the collision!
      int tempX = xSpeed;
      xSpeed = someOtherBall.xSpeed;
      someOtherBall.xSpeed = tempX;
      
      int tempY = ySpeed;
      ySpeed = someOtherBall.ySpeed;
      someOtherBall.ySpeed = tempY;
      
    }
    else {
      //no collision!
      fillColor = color(175);
      someOtherBall.fillColor = color(175);
    }
    
    constrainToScreen();
  }
}