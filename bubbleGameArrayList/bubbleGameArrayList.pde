ArrayList<Bubble> theBubbles;

void setup() {
  size(800, 800);

  theBubbles = new ArrayList<Bubble>();

  for (int i=0; i < 20; i++) {
    theBubbles.add(new Bubble());
  }
}

void draw() {
  background(255);

  for (Bubble thisBubble : theBubbles) {
    thisBubble.bubbleUp();
    thisBubble.display();
  }
}

void mousePressed() {
  for (int i=0; i<theBubbles.size(); i++) {
    Bubble thisBubble = theBubbles.get(i);
    if (thisBubble.checkIfClicked(mouseX, mouseY)) {
      theBubbles.remove(i);
    }
  }
  println(theBubbles.size());
}

void keyPressed() {
  theBubbles.add(new Bubble());
}