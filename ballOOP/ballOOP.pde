Ball theBall, otherBall;

void setup() {
  size(800, 800);
  
  //calling the constructor
  theBall = new Ball();  
  otherBall = new Ball();
}

void draw() {
  background(255);
  
  //move things first, then display them...
  theBall.move();
  otherBall.move();
  
  theBall.checkForCollision(otherBall);
  
  theBall.display();
  otherBall.display();
}