//this runs once
void setup() {
  size(800, 800);
  background(255);
}

//this runs forever in an infinite loop...
void draw() {
  //check where the mouse is, and set the fill accordingly
  float mouseDistance = dist(width/2, height/2, mouseX, mouseY);
  float radius = (width*0.85)/2;
  
  if (mouseDistance <= radius) {
    fill(0);
  }
  else {
    fill(255);
  }
  
  //draw circle
  ellipse(width/2, height/2, radius*2, radius*2);
}