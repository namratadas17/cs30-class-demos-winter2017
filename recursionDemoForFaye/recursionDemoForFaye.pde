
void setup() {
  size(1500, 600);
  background(255);
  displayCircles(width/2, height/2, 300);
}

void draw() {
  
}

void displayCircles(float x, float y, float radius) {
  //exit clause
  if (radius > 20) {
    ellipse(x, y, radius, radius);
    displayCircles(x-radius/2, y, radius*0.75);
    displayCircles(x+radius/2, y, radius*0.75);
  }
}