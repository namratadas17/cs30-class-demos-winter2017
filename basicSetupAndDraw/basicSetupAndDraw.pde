
void setup() {
  size(700, 700);
  //frameRate(5);
  println( midpoint(3, 4) );
}

void draw() {
  background(255);
  line(random(width), random(height), random(width), random(height));
  
}


float midpoint(float numberOne, float numberTwo) {
  return (numberOne + numberTwo) / 2 ;
}