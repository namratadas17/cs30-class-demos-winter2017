
//setup the window
size(900, 900);
background(255);

float circleScalar = .75;
float decreaseInScalar = 0.15;

color black = color(0);
color gray = color(100, 100, 100);
color blue = color(0, 0, 255);
color red = color(255, 0, 0);
color yellow = color(255, 255, 0);

color[] theColors = {black, gray, blue, red, yellow};

int counter = 0;
while (counter < 5) {
  fill(theColors[counter]);
  ellipse(width/2, height/2, width*circleScalar, height*circleScalar);
  circleScalar -= decreaseInScalar;
  counter += 1;  //counter++
}