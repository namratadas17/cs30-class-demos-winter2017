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
    float theBrightness = r + g + b;
    float threshold = 100;

    color newColor;

    if (theBrightness > threshold) {
      newColor = color(0);
    }
    else {
      newColor = color(255);
    }

    pixels[i] = newColor;
  }
  updatePixels();
}