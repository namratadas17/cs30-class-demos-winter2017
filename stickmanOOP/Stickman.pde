class Stickman {
  //data
  float x, y;
  float xSpeed;
  color bodyColor;
  float weight;

  //constructor(s)
  Stickman() {
    x = random(width);
    y = random(height);
    bodyColor = color( random(255), random(255), random(255));
    weight = 5;
    xSpeed = 4;
  }

  //behaviours
  void display() {
    strokeWeight(weight);
    stroke(bodyColor);

    pushMatrix();
      translate(x, y);
      //the torso
      line(0, -100, 0, 200);
      //legs
      line(0, 200, -50, 250);
      line(0, 200, 50, 250);
      //arms
      line(-75, 0, 75, 0);
      //head
      ellipse(0, -150, 100, 100);
    popMatrix();
  }

  void followMouse() {
    if (mouseX != 0 || mouseY != 0) {  //just so the stickman doesn't jump to 0, 0 at the start
      x = mouseX;
      y = mouseY;
    }
  }

  void bounceHorizontally() {
    x += xSpeed;

    if (x >= width || x <= 0) {
      xSpeed *= -1;
    }
  }
  
  void eat() {
    weight++;
    weight = constrain(weight, 1, 50);
  }
  
  void exercise() {
    weight--;
    weight = constrain(weight, 1, 50);
  }
}