//info about the planet
float x, y, radius, theta, distanceFromCenter;

void setup() {
  size(600, 600);
  radius = 50;
  theta = 0;
  distanceFromCenter = 200;
}


void draw() {
  background(0);
  translate(width/2, height/2);  //moves origin to middle of screen

  fill(255, 0, 0);
  x = distanceFromCenter * cos(theta);
  y = distanceFromCenter * sin(theta);
  ellipseMode(CENTER);
  ellipse(x, y, radius, radius);

  theta += 0.05;
}