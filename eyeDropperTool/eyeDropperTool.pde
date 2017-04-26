PImage passwords;

void setup() {
  size(600, 600);
  passwords = loadImage("passwords.jpeg");
}

void draw() {
  background(255);
  image(passwords, 0, 0);
  
  loadPixels();
  color thePixelColor = pixels[mouseY*width + mouseX]; 
  fill(thePixelColor);
  rect(250, 250, 150, 150);
}