class Walker {
  //data
  int x, y;
  color strokeColor;

  //constructor(s)
  Walker() {
    x = width/2;
    y = height/2;
    strokeColor = color(0);
  }
  
  Walker(color theColor) {
    strokeColor = theColor;
    x = width/2;
    y = height/2;
  }
  
  Walker(int someX, int someY, color someColor) {
    x = someX;
    y = someY;
    strokeColor = someColor;
  }

  //behavior
  void display() {
    stroke(strokeColor);
    point(x, y);
  }

  void move() {
    float directionChoice = random(100);
    if (directionChoice < 25) {  //go right
      x++;
    } else if (directionChoice < 50) { //go left
      x--;
    } else if (directionChoice < 75) { //go down
      y++;
    } else {
      y--;
    }
  }
}