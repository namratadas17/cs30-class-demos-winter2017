//GOAL: make a 'traffic light' simulator. For now, just have the light 
// changing according to time. You may want to investigate the millis()
// function at processing.org/reference.

//0 - green, 1 - orange, 2 - red
int state;
int timeElapsed;
int amountOfTimeGreenLightIsOn, amountOfTimeOrangeLightIsOn, amountOfTimeRedLightIsOn;

void setup() {
  size(600, 600);
  state = 0;
  
  timeElapsed = 0;
  amountOfTimeGreenLightIsOn = 5000;
  amountOfTimeOrangeLightIsOn = 1000;
  amountOfTimeRedLightIsOn = 5000;
}

void draw() {
  background(255);
  drawOutlineOfLights();
  determineState();
  turnOnTheCorrectLight();
}

void determineState() {
  int timeToWait = 0;
  if (state == 0) {
    timeToWait = amountOfTimeGreenLightIsOn;
  }
  else if (state == 1) {
    timeToWait = amountOfTimeOrangeLightIsOn;
  }
  else if (state == 2) {
    timeToWait = amountOfTimeRedLightIsOn;
  }
  
  //figure out if we should switch states...
  if (millis() >= timeElapsed + timeToWait) {
    state++;
    if (state == 3) {
      state = 0;
    }
    timeElapsed = millis();
  }
}

//temporary solution -- change the light by clicking...
//void mousePressed() {
//  state++;
//  if (state == 3) {
//    state = 0;
//  }
//}

void turnOnTheCorrectLight() {
  if (state == 0) {
    drawGreenLight();
  }
  else if (state == 1) {
    drawOrangeLight();
  }
  else if (state == 2) {
    drawRedLight();
  }
}

void drawGreenLight() {
  fill(0, 255, 0);
  ellipse(width/2, height/2 + 65, 50, 50); //bottom
}

void drawOrangeLight() {
  fill(245, 210, 12);
  ellipse(width/2, height/2, 50, 50); //middle
}

void drawRedLight() {
  fill(255, 0, 0);
  ellipse(width/2, height/2 - 65, 50, 50); //top
}

void drawOutlineOfLights() {
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);
  
  //lights
  fill(255);
  ellipse(width/2, height/2 - 65, 50, 50); //top
  ellipse(width/2, height/2, 50, 50); //middle
  ellipse(width/2, height/2 + 65, 50, 50); //bottom
}