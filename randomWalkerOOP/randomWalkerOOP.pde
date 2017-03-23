Walker peter;
Walker faye;
Walker wendy;

void setup() {
  size(600, 600);
  background(255);
  peter = new Walker();
  faye = new Walker( color(255, 0, 0) );
  wendy = new Walker( 500, 500, color(0, 0, 255));
}

void draw() {
  faye.move();
  peter.move();
  wendy.move();
  
  faye.display();
  peter.display();
  wendy.display();
}