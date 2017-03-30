class JumpingBall {
  float x, y, dx, dy;
  float xAcceleration, yAcceleration;
  float gravity;
  float radius;
  
  JumpingBall() {
    radius = 50;
    x = width/2;
    y = height - radius;
    dx = 0;
    dy = 0;
    xAcceleration = 0;
    yAcceleration = 0;
    gravity = 0.05;
  }
  
  void display() {
    ellipse(x, y, radius*2, radius*2);
  }
  
  void move() {
    dy += yAcceleration;  //acceleration changes the velocity
    dy += gravity;        //gravity changes the y velocity
    y += dy;              //velocity changes the location
    
    
    y = constrain(y, 0, height-radius);  //stay on screen
    
    //reset acceleration to zero -- so we don't accelerate forever
    yAcceleration = 0;
  }
  
  void jump() {
    yAcceleration = -3;
  }
  
}