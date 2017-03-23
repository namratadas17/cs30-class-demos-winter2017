Bubble theBubble;

void setup() {
  size(800, 800);
  theBubble = new Bubble();
}

void draw() {
  background(255);
  
  theBubble.bubbleUp();
  theBubble.display();
}