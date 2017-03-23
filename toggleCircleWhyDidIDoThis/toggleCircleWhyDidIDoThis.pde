boolean hasStayedInCircle;
float someNumber;
color red = color(255, 0, 0);
color blue = color(0, 0, 255);

//this runs once
void setup() {
  size(800, 800);
  background(255);
  hasStayedInCircle = false;
}

//this runs forever in an infinite loop...
void draw() {
  //check where the mouse is, and set the fill accordingly
  float mouseDistance = dist(width/2, height/2, mouseX, mouseY);
  float radius = (width*0.85)/2;


  if (mouseDistance <= radius && hasStayedInCircle == false) {
    hasStayedInCircle = true;
    someNumber = random(0, 100);
  }
  if (mouseDistance <= radius) {
    if (someNumber > 50) {
      fill(red);
    } else {
      fill(blue);
    }
  } else {  //you just left the circle
    hasStayedInCircle = false;
    fill(255);
  }

  //draw circle
  ellipse(width/2, height/2, radius*2, radius*2);
}