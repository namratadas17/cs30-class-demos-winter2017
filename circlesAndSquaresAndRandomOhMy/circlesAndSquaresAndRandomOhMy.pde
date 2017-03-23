//Example 4-7 Remix

//Global variables
float r;
float g;
float b;
float a;

float diam;
float x;
float y;

void setup() {
  size(800, 800);
  background(255);
  smooth();
}

void draw() {
  chooseValues();
  displayShape();
}

void chooseValues() {
  // Each time through draw(), new random numbers are picked for a new ellipse.
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  diam = random(20);
  x = random(width);
  y = random(height);
}

void displayShape() {
  noStroke();

  if (mouseX > width/2) {  //on the right side of the screen
    // Use values to draw an ellipse
    fill(r, g, b, a);
    ellipse(x, y, diam, diam);
  } else {  //on the left side of the screen
    // Use values to draw a rectangle
    fill(r, r, r, a);
    rect(x, y, diam, diam);
  }
}