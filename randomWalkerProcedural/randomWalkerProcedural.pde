int x, y;

void setup() {
  size(600, 600);
  background(255);
  x = width/2;
  y = height/2;
}

void draw() {
  displayPoint();
  movePoint();
}

void displayPoint() {
  point(x, y);
}

void movePoint() {
  float directionChoice = random(100);
  if (directionChoice < 25) {  //go right
    x++;
  }
  else if (directionChoice < 50) { //go left
    x--;
  }
  else if (directionChoice < 75) { //go down
    y++;
  }
  else {
    y--;
  }
}