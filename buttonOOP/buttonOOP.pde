Button startButton;
Button otherButton;

void setup() {
  size(600, 600);
  startButton = new Button();
  otherButton = new Button();
  otherButton.y = 150;
  otherButton.label = "Other";
  startButton.label = "Start";
}

void draw() {
  background(255);
  if (!startButton.isClicked()) {
    startButton.display();
  } else {
    otherButton.display();
  }
}

void mousePressed() {
  startButton.checkForClick();
}