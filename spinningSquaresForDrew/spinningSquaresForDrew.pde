float theta;

void setup() {
  size(600, 600);
  theta = 0;
}

void draw() {
  background(255);
  translate(60, 80);  //don't forget to translate BEFORE you rotate!!
  rotate(theta);
  fill(0);
  rectMode(CENTER);
  rect(0, 0, 40, 40);
  
  float mappedX = map(mouseX, 0, width, -0.3, 0.3);
  theta += mappedX;
}