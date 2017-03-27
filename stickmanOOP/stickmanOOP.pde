Stickman namrata, sami;

void setup() {
  size(800, 800);
  namrata = new Stickman();
  sami = new Stickman();
}

void draw() {
  background(255);
  
  reactToMouse();
  
  sami.followMouse();
  namrata.bounceHorizontally();
  
  sami.display();
  namrata.display();
}

void reactToMouse() {
  if (mousePressed) {
    if (mouseButton == LEFT) {
      sami.eat();
    }
    else if (mouseButton == RIGHT) {
      sami.exercise();
    }
  }
  if (keyPressed) {
    if (key == 'e') {
      namrata.eat();
    }
    else if (key == 'x') {
      namrata.exercise();
    }
  }
}