class Ball {
  float x, y;
  float xSpeed, ySpeed;
  float circleRadius;
  Minim minim;
  AudioPlayer player;

  Ball(PApplet p) {
    x = width/2;
    y = height/2;
    xSpeed = random(2, 5);
    ySpeed = random(2, 5);
    circleRadius = 20;
    minim = new Minim(p);
    player = minim.loadFile("pop.wav");
  }

  void display() {
    //display
    fill(0);
    ellipse(x, y, 2*circleRadius, 2*circleRadius);
  }

  void move() {
    //movement
    x = x + xSpeed;
    y = y + ySpeed;

    if (x + circleRadius >= width || x - circleRadius <= 0) {
      xSpeed = xSpeed * -1;  //switching the direction
      player.rewind();
      player.play();
    }
    if (y + circleRadius >= height || y - circleRadius <= 0) {
      ySpeed = ySpeed * -1;
      player.rewind();
      player.play();
    }
  }
}