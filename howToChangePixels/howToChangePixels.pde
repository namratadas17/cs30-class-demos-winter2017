PImage passwords;

void setup() {
  size(600, 600);
  passwords = loadImage("passwords.jpeg");
}

void draw() {
  background(255);
  image(passwords, 0, 0);
  
  loadPixels();
  for (int i=0; i<pixels.length; i += 3) {
    pixels[i] = color(0);
  }
  updatePixels();
}