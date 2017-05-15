// Object oriented programming allows us to defi ne classes in terms of other classes.
// A class can be a subclass (aka " child " ) of a super class (aka "parent").
// This is a simple example demonstrating this concept, known as "inheritance."
Square s;
Circle c;
Line l;

void setup() {
  size(600,600);
  smooth();
  // A square and circle
  s = new Square(75,75,10);
  c = new Circle(125,125,20,color(175));
  l = new Line(100, 100, 200, 300);
}

void draw() {
  background(255);
  c.jiggle();
  s.jiggle();
  l.jiggle();
  
  c.display();
  s.display();
  l.display();
}