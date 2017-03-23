//Create a timer class to make 
//triggering events at specific 
//times easier. Use this to make the 
//screen switch background colors 
//every 2 seconds, and make text 
//appear/disappear.

Timer backgroundColorTimer;
boolean bgColor;

void setup() {
  size(800, 800);
  backgroundColorTimer = new Timer(2);
  bgColor = false;
}

void draw() {
  if (backgroundColorTimer.isDone()) {
    bgColor = !bgColor;
    backgroundColorTimer.reset();
  }
  
  if (bgColor) {
    background(255, 0, 0);
  }
  else {
    background(0);
  }
}