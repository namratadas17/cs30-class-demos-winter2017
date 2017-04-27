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
    float outputRed = (r * .393) + (g *.769) + (b * .189);
    float outputGreen = (r * .349) + (g *.686) + (b * .168);
    float outputBlue = (r * .272) + (g *.534) + (b * .131);


    //float changeAmount = map(mouseX, 0, width, 0, 255);
    color newColor = color(outputRed, outputGreen, outputBlue);

    pixels[i] = newColor;
  }
  updatePixels();
}