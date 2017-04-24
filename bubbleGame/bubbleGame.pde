Bubble[] theBubbles;

void setup() {
  size(800, 800);
  
  theBubbles = new Bubble[20];
  for (int i=0; i<theBubbles.length; i++) {
    theBubbles[i] = new Bubble();
  }
}

void draw() {
  background(255);

  for (int i=0; i<theBubbles.length; i++) {
    theBubbles[i].bubbleUp();
    theBubbles[i].display();
  }
}

void mousePressed() {
  for (int i=0; i<theBubbles.length; i++) {
    theBubbles[i].checkIfClicked(mouseX, mouseY);
  }
}