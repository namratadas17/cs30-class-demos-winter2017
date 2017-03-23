//Ball theBall, otherBall;
Ball[] theBalls;

void setup() {
  size(800, 800);
  
  theBalls = new Ball[100];
  for (int i=0; i<theBalls.length; i++) {
    theBalls[i] = new Ball();  
  }
  
  //calling the constructor
  //theBall = new Ball();  
  //otherBall = new Ball();
}

void draw() {
  background(255);
  
  //move things first, then display them...
  //theBall.move();
  //otherBall.move();
  for (int i=0; i<theBalls.length; i++) {
    theBalls[i].move();
    theBalls[i].display();
  }
  
  
  //theBall.checkForCollision(otherBall);
  
  //theBall.display();
  //otherBall.display();
}