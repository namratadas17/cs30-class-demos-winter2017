PImage moon;
boolean isItThundering;
int thunderTimes;

void setup() {
  size(600, 600);
  moon = loadImage("thingFayeWants.jpg");
  isItThundering = false;
}

void draw() {
  background(0);
  dealWithThunder();
  
  imageMode(CENTER);
  image(moon, 300, 200);
  
  
}

void mouseClicked() {
  isItThundering = true;
  thunderTimes = 10;
}

void dealWithThunder() {
  if (isItThundering) {
    if ((thunderTimes > 0) && (thunderTimes % 2 == 0)) {
      background(255);
    }
    else {
      background(0);
    }
    thunderTimes--;
  }
}