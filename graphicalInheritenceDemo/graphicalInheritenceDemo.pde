// Object oriented programming allows us to defi ne classes in terms of other classes.
// A class can be a subclass (aka " child " ) of a super class (aka "parent").
// This is a simple example demonstrating this concept, known as "inheritance."

Shape[] theShapes;

void setup() {
  size(800, 800);
  smooth();

  theShapes = new Shape[100];

  for (int i=0; i<theShapes.length; i++) {
    float theChoice = random(100);
    if (theChoice < 33) {
      theShapes[i] = new Square(random(width), random(height), random(5, 20));
    } else if (theChoice < 66) {
      theShapes[i] = new Circle(random(width), random(height), random(15, 30), color(175));
    } else {
      theShapes[i] = new Line(random(width), random(height), random(width), random(height));
    }
  }
}

void draw() {
  background(255);
  
  for (Shape thisShape : theShapes) {
    thisShape.jiggle();
    thisShape.display();
  }
}