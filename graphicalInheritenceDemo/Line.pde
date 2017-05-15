class Line extends Shape {
  float x2, y2;
  
  Line(float x1, float y1, float x2, float y2) {
    super(x1, y1, 0);
    this.x2 = x2;
    this.y2 = y2;
  }
  
  void jiggle() {
    super.jiggle();
    x2 += random(-1, 1);
    y2 += random(-1, 1);
  }
  
  void display() {
    line(x, y, x2, y2);
  }
  
}