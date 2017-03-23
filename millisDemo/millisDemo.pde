//millis demo

int timeToWait;
int timeElapsed;

void setup() {
  size(600, 600);
  timeToWait = 1000;
  timeElapsed = 0;
}

void draw() {
  if (millis() > timeElapsed + timeToWait) {
    background(0);
    timeElapsed = millis();
  }
  else {
    background(255);
  }
}