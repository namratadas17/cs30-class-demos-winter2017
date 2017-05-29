class Cannon {
  PVector location, target, dir;
  ArrayList<Ball> theBalls;

  Cannon() {
    theBalls = new ArrayList<Ball>();
    location = new PVector(width/2, height);
    target = new PVector(mouseX, mouseY);
  }

  void display() {
    displayBalls();

    fill(255);
    pushMatrix();
      translate(location.x, location.y);
      rotate( dir.heading() );
      rectMode(CENTER);
      rect(0, 0, 100, 20);
    popMatrix();
  }

  void pointAtMouse() {
    target = new PVector(mouseX, mouseY);
    dir = PVector.sub(target, location);
  }

  void fire() {
    if (theBalls.size() < 5 ) {
      PVector location = new PVector(width/2, height);
      PVector target = new PVector(mouseX, mouseY);
      PVector dir = PVector.sub(target, location);
      dir.normalize();
      dir.mult(7);

      theBalls.add( new Ball(location, dir) );
    }
  }

  void displayBalls() {
    for (int i=theBalls.size()-1; i>=0; i--) {
      Ball b = theBalls.get(i);
      if (b.isFinished() ) {
        theBalls.remove(i);
      } else {
        b.move();
        b.display();
      }
    }
  }
}