PImage[] mario;
int spriteToShow;

void setup() {
  size(600, 600);
  frameRate(5);    //this is a terrible idea. Don't do this!
                   //should be using millis to time this!
  
  mario = new PImage[10];
  for (int i=0; i<mario.length; i++) {
    mario[i] = loadImage(i + ".png");
  }
  spriteToShow = 0;
}

void draw() {
  background(255);
  
  //display the mario sprites...
  
  image(mario[spriteToShow], mouseX, mouseY);
  spriteToShow++;
  spriteToShow = spriteToShow % mario.length;
}