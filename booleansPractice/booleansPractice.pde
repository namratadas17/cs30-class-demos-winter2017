boolean firstVar = true;
boolean secondVar = false;
boolean thirdVar = false;

void setup() {
  size(200, 200);
}

void draw() {
  if (firstVar || !secondVar && thirdVar) {
    background(255);
  }
  else {
    background(0);
  }
}