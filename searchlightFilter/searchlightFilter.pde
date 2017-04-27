PImage passwords;
float scalar;
float spotlightSize;

void setup() {
  size(600, 600);
  passwords = loadImage("fish.jpg");
  scalar = 0.5;
  spotlightSize = 50;
}

void draw() {
  background(255);
  image(passwords, 0, 0, passwords.width*0.5, passwords.height*0.5);

  loadPixels();
  
  for (int x=0; x<width; x++) {
    for (int y=0; y<height; y++) {
      int thePixel = y*width + x;
      float distanceFromMouse = dist(x, y, mouseX, mouseY);
      if (distanceFromMouse > spotlightSize) {
        pixels[thePixel] = color(0);
      }
    }
  }
  
  updatePixels();
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  spotlightSize += e*5;
}