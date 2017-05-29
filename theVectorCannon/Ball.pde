class Ball {
  PVector location, velocity, gravity;
  float radius;

  Ball(PVector startingLocation, PVector _velocity) {
    location = startingLocation;
    velocity = _velocity;
    radius = 10;
    gravity = new PVector(0, 0.075);
  }

  void display() {
    ellipse(location.x, location.y, radius*2, radius*2);
  }

  void move() {
    velocity.add(gravity);
    location.add(velocity);
  }

  boolean isFinished() {
    if (location.x > width + radius || location.x < 0 - radius ||
        location.y > height + radius || location.y < 0 - radius) {
      return true;
    } else {
      return false;
    }
  }
}