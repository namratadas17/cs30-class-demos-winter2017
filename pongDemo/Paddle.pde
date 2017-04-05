class Paddle {
  float x, y, ySpeed;
  float paddleWidth, paddleHeight;
  char upKey, downKey;
  boolean isMovingUp, isMovingDown;
  char whichSide;
  
  Paddle(float _x, char _upKey, char _downKey, char _whichSide) {
    ySpeed = 0;
    paddleWidth = 30;
    paddleHeight = 200;
    x = _x;
    y = height/2 - paddleHeight/2;
    upKey = _upKey;
    downKey = _downKey;
    isMovingUp = false;
    isMovingDown = false;
    whichSide = _whichSide;
  }
  
  void display() {
    fill(0);
    rect(x, y, paddleWidth, paddleHeight);
  }
  
  void move() {
    if (isMovingUp) {
      ySpeed = -5;
    }
    else if (isMovingDown) {
      ySpeed = 5;
    }
    else {
      ySpeed = 0;
    }
    y += ySpeed;
    
    constrainToScreen();
  }
  
  void constrainToScreen() {
    y = constrain(y, 0, height-paddleHeight);
  }
  
  void handleKeyPress() {
    if (key == upKey) {
      isMovingUp = true;
    }
    else if (key == downKey) {
      isMovingDown = true;
    }
  }
  
  void handleKeyRelease() {
    if (key == upKey) {
      isMovingUp = false;
    }
    else if (key == downKey) {
      isMovingDown = false;
    }
  }
  
}