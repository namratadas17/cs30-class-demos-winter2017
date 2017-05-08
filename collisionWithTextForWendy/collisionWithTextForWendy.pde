String s = "wendy";

void setup() {
  size(700, 700);
  
}

void draw() {
  background(255);
  fill(0);
  
  float x = 200;
  float y = 400;
  float fontSize = 42;
  
  textSize(fontSize);
  textAlign(LEFT);
  text(s, x, y);
  
  //collision detection box
  float textAmount = textWidth(s);
  noFill();
  //rect(x, y, textAmount, -45);
  if ((mouseX > x) && (mouseX < x+textAmount) && (mouseY > y-fontSize) && (mouseY < y)) {
    println("shoot the text!");
  }
}