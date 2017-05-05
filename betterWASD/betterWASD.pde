boolean isMovingUp, isMovingDown, isMovingLeft, isMovingRight;
float x, y, radius, speed;

void setup() {
  size(600, 600);
  isMovingDown = false;
  isMovingLeft = false;
  isMovingRight = false;
  isMovingUp = false;
  x = width/2;
  y = height/2;
  radius = 50;
  speed = 5;
}

void draw() {
  background(255);
  
  move();
  display();
}

void display() {
  fill(0);
  ellipse(x, y, radius, radius);
}

void move() {
  if (isMovingDown) {
    y += speed;
  }
  if (isMovingUp) {
    y -= speed;
  }
  if (isMovingLeft) {
    x -= speed;
  }
  if (isMovingRight) {
    x += speed;
  }
}

void keyPressed() {
  if (key == 'w') {
    isMovingUp = true;
  }
  else if (key == 's') {
    isMovingDown = true;
  }
  else if (key == 'a') {
    isMovingLeft = true;
  }
  else if (key == 'd') {
    isMovingRight = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    isMovingUp = false;
  }
  else if (key == 's') {
    isMovingDown = false;
  }
  else if (key == 'a') {
    isMovingLeft = false;
  }
  else if (key == 'd') {
    isMovingRight = false;
  }
}