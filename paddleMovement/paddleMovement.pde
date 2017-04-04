//paddle movement demo for peter

Paddle p1, p2;

void setup() {
  size(800, 800);
  p1 = new Paddle(75, height/2, 'w', 's');
  p2 = new Paddle(width-75, height/2, 'o', 'l');
}

void draw() {
  background(255);
  
  p1.move();
  p2.move();
  
  p1.display();
  p2.display();
}

void keyPressed() {
  p1.handleKeyPress();
  p2.handleKeyPress();
}

void keyReleased() {
  p1.handleKeyRelease();
  p2.handleKeyRelease();
}