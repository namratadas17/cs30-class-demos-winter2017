void setup() {
  size(700, 700);
  noStroke();
}

void draw() {
  background(255);
  int theLevel = int(map(mouseX, 0, width, 1, 8));
  drawCircle(width/2, 350, theLevel);
}

void drawCircle(int x, int radius, int level) {
  float fillColor = 126 * level/4.0;
  fill(fillColor);
  ellipse(x, height/2, radius*2, radius*2);
  
  if (level > 1) {  //exit clause
    level = level - 1;
    drawCircle(x - radius/2, radius/2, level);
    drawCircle(x + radius/2, radius/2, level);
  }
}