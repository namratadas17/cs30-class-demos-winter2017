class Ball {
  //data
  int x, y;
  int px, py;  //where was the ball last frame? used to correct collisions
  int xSpeed, ySpeed;
  int radius;
  color fillColor;

  //constructor(s)
  Ball() {
    radius = 30;
    fillColor = color(255, 0, 0);
    xSpeed = int(random(3, 9));
    //randomize the direction the ball goes toward at the start
    float randomSeed = random(100);
    if (randomSeed < 50) {
      xSpeed *= -1;
    }
    resetLocation();
  }

  void resetLocation() {
    x = width/2;
    y = height/2;
    px = x;
    py = y;
    ySpeed = int(random(-9, 9));
    xSpeed *= -1;  //switch direction if someone misses the ball...
  }

  //behaviour
  void display() {
    //display circle at location
    stroke(0);
    fill(fillColor);
    ellipse(x, y, radius*2, radius*2);
  }

  void move(Paddle p1, Paddle p2, Score theScore) {
    //save current location of ball
    px = x;
    py = y;

    //add the current speed to the location
    x += xSpeed;
    y += ySpeed;


    bounceOffPaddle(p1);
    bounceOffPaddle(p2);
    bounceOnEdge();

    checkForPoint(theScore);
  }

  void checkForPoint(Score gameScore) {
    if (x <= 0) {
      gameScore.pointForPlayer2();
      resetLocation();
    }
    if (x >= width) {
      gameScore.pointForPlayer1();
      resetLocation();
    }
  }

  void bounceOffPaddle(Paddle somePaddle) {
    if (checkForCollision(somePaddle)) {
      //note that this is a fairly crappy way to deal with collision reaction, but
      //without getting into vector math, I can't think of a better/simpler way
      //If you come up with a simple way to avoid the possibility of the ball 
      //getting "caught" at the bottom/top of the paddle, let me know.
      
      //If the ball hits a paddle, put the ball back to where it was last frame
      x = px;
      y = py;

      //avoid eternal bouncing on paddle by moving the ball backwards off paddle
      while (checkForCollision(somePaddle)) {
        x -= xSpeed;
      }

      //multiply speed by -1 to turn the ball around
      xSpeed = xSpeed * -1;
    }
  }

  void bounceOnEdge() {
    if ((y >= height-radius) || (y <= 0+radius)) {
      // If the object reaches either edge, multiply speed by -1 to turn it around.
      ySpeed = ySpeed * -1;
    }
  }

  void constrainToScreen() {
    x = constrain(x, 0+radius, width-radius);
    y = constrain(y, 0+radius, height-radius);
  }

  boolean checkForCollision(Paddle thePaddle) {
    float x1, x2, y1, y2;
    
    //figure out which side of the paddle should be tested
    if (thePaddle.whichSide == 'l') {
      x1 = thePaddle.x + thePaddle.paddleWidth;
      x2 = thePaddle.x + thePaddle.paddleWidth;
      y1 = thePaddle.y;
      y2 = thePaddle.y + thePaddle.paddleHeight;
    }
    else {
      x1 = thePaddle.x;
      x2 = thePaddle.x;
      y1 = thePaddle.y;
      y2 = thePaddle.y + thePaddle.paddleHeight;
    }

    if (lineCircle(x1, y1, x2, y2, x, y, radius)) {
      return true;
    }
    else {
      return false;
    }
    
  }

  // idea and some code taken from http://www.jeffreythompson.org/collision-detection/line-circle.php 
  // LINE/CIRCLE
  boolean lineCircle(float x1, float y1, float x2, float y2, float cx, float cy, float r) {

    // is either end INSIDE the circle?
    // if so, return true immediately
    boolean inside1 = pointCircle(x1, y1, cx, cy, r);
    boolean inside2 = pointCircle(x2, y2, cx, cy, r);
    if (inside1 || inside2) return true;

    // get length of the line
    float distX = x1 - x2;
    float distY = y1 - y2;
    float len = sqrt( (distX*distX) + (distY*distY) );

    // get dot product of the line and circle
    float dot = ( ((cx-x1)*(x2-x1)) + ((cy-y1)*(y2-y1)) ) / pow(len, 2);

    // find the closest point on the line
    float closestX = x1 + (dot * (x2-x1));
    float closestY = y1 + (dot * (y2-y1));

    // is this point actually on the line segment?
    // if so keep going, but if not, return false
    boolean onSegment = linePoint(x1, y1, x2, y2, closestX, closestY);
    if (!onSegment) return false;

    // optionally, draw a circle at the closest
    // point on the line
    //fill(255, 0, 0);
    //noStroke();
    //ellipse(closestX, closestY, 20, 20);

    // get distance to closest point
    distX = closestX - cx;
    distY = closestY - cy;
    float distance = sqrt( (distX*distX) + (distY*distY) );

    if (distance <= r) {
      return true;
    }
    return false;
  }


  // POINT/CIRCLE
  boolean pointCircle(float px, float py, float cx, float cy, float r) {

    // get distance between the point and circle's center
    // using the Pythagorean Theorem
    float distX = px - cx;
    float distY = py - cy;
    float distance = sqrt( (distX*distX) + (distY*distY) );

    // if the distance is less than the circle's
    // radius the point is inside!
    if (distance <= r) {
      return true;
    }
    return false;
  }


  // LINE/POINT
  boolean linePoint(float x1, float y1, float x2, float y2, float px, float py) {

    // get distance from the point to the two ends of the line
    float d1 = dist(px, py, x1, y1);
    float d2 = dist(px, py, x2, y2);

    // get the length of the line
    float lineLen = dist(x1, y1, x2, y2);

    // since floats are so minutely accurate, add
    // a little buffer zone that will give collision
    float buffer = 0.1;    // higher # = less accurate

    // if the two distances are equal to the line's
    // length, the point is on the line!
    // note we use the buffer here to give a range,
    // rather than one #
    if (d1+d2 >= lineLen-buffer && d1+d2 <= lineLen+buffer) {
      return true;
    }
    return false;
  }
}