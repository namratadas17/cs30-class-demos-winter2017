float theScale;

void setup() {
  size(600, 600);
  theScale = width;
}

void draw() {
  background(255);
  displayClockFace();
  displayHandsOfClock();
}

void displayHandsOfClock() {
  int theSecond = second();
  strokeWeight(3);
  stroke(255, 0, 0);
  
  float amountToRotate = (theSecond * 1.0/60) * 2 * PI;
  
  pushMatrix();
    rotate(amountToRotate);
    line(0, 0, 0, -1*theScale*0.42);
  popMatrix();
  
}

void displayClockFace() {
  //the outside of the clock
  strokeWeight(8);
  stroke(0);
  translate(width/2, height/2);
  fill(255);
  ellipse(0, 0, theScale*0.9, theScale*0.9);

  //center dot
  fill(0);
  strokeWeight(1);
  ellipse(0, 0, 6, 6);

  strokeCap(SQUARE);

  //draw the minute marks
  for (int counter=0; counter<60; counter++) {
    rotate(radians(360)/60);  //rotate(2*PI/60);
    strokeWeight(3);
    line(theScale*0.35, 0, theScale*0.42, 0);
  }
  
  //draw the hour marks
  for (int counter=0; counter<12; counter++) {
    rotate(radians(360)/12);  //rotate(2*PI/12);
    strokeWeight(8);
    line(theScale*0.32, 0, theScale*0.42, 0);
  }
  
}