PVector location, velocity, gravity;

void setup() {
  size(600, 600);
  location = new PVector(width/2, height);
  velocity = new PVector(1, -10);
  gravity = new PVector(0, 0.1);
}

void draw() {
  background(0);
  fill(255);
  
  ellipse(location.x, location.y, 25, 25);
  
  velocity.add(gravity);
  location.add(velocity);
}

void mousePressed() {
  //figure out where to aim at
  location.set(width/2, height);
  PVector target = new PVector(mouseX, mouseY);
  PVector direction = PVector.sub(target, location);
  direction.normalize();  //just makes the hypotenuse into 1
  direction.mult(7);
  
  //reset the ball
  velocity.set(direction.x, direction.y);
  println(location, velocity);
}