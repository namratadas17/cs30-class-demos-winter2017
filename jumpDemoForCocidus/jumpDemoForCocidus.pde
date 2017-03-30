JumpingBall theBall;

void setup() {
  size(800, 800);
  theBall = new JumpingBall();
}

void draw() {
  background(255);
  
  theBall.move();
  theBall.display();
}

void keyPressed() {
  if (key == ' ') {
    theBall.jump();
  }
}