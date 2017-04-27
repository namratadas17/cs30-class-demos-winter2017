PImage passwords;

void setup() {
  size(600, 600);
  passwords = loadImage("passwords.jpeg");
}

void draw() {
  background(255);
  image(passwords, 0, 0);
  
  loadPixels();
  for (int i=0; i<pixels.length; i++) {
    color thisPixel = pixels[i];
    float r = red(thisPixel);
    float g = green(thisPixel);
    float b = blue(thisPixel);
    
    //insert your filter here!
    float changeAmount = map(mouseX, 0, width, 0, 255);
    color newColor = color(255-r, 255-g, 255-b);
    
    pixels[i] = newColor;
  }
  updatePixels();
}