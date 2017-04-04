class Paddle {
  float x, y, ySpeed;
  float paddleWidth, paddleHeight;
  char upKey, downKey;
  boolean isMovingUp, isMovingDown;
  
  Paddle(float _x, float _y, char _upKey, char _downKey) {
    x = _x;
    y = _y;
    ySpeed = 0;
    paddleWidth = 50;
    paddleHeight = 150;
    upKey = _upKey;
    downKey = _downKey;
    isMovingUp = false;
    isMovingDown = false;
  }
  
  void display() {
    rectMode(CENTER);
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