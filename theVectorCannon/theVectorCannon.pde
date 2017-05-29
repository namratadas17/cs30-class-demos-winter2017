Cannon theCannon;

void setup() {
  size(600, 600);
  theCannon = new Cannon();
}

void draw() {
  background(0);

  theCannon.pointAtMouse();
  theCannon.display();
}

void mousePressed() {
  theCannon.fire();
}