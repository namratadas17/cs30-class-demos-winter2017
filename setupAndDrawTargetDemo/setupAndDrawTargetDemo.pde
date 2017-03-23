void setup() {
  //setup the window
  size(900, 900);
}

void draw() {
  background(255);
  
  //change these values to adjust the initial size of target, and it's segments
  float circleScalar = .75;
  float decreaseInScalar = 0.15;

  //declare colors and color array to use for segments
  color black = color(0);
  color gray = color(100, 100, 100);
  color blue = color(0, 0, 255);
  color red = color(255, 0, 0);
  color yellow = color(255, 255, 0);

  color[] theColors = {black, gray, blue, red, yellow};

  //draw the target
  int counter = 0;
  while (counter < 5) {
    fill(theColors[counter]);
    ellipse(mouseX, mouseY, width*circleScalar, height*circleScalar);
    circleScalar -= decreaseInScalar;
    counter += 1;  //or just use counter++
  }
}