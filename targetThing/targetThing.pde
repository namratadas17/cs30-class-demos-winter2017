
//setup the window
size(900, 900);
background(255);

float circleScalar = .75;
float decreaseInScalar = 0.15;

//draw first circle
fill(0);
ellipse(width/2, height/2, width*circleScalar, height*circleScalar);
circleScalar -= decreaseInScalar;  //circleScalar = circleScalar - decreaseInScalar

//draw second circle
fill(100, 100, 100);
ellipse(width/2, height/2, width*circleScalar, height*circleScalar);
circleScalar -= decreaseInScalar;

//draw third circle
fill(0, 0, 255);
ellipse(width/2, height/2, width*circleScalar, height*circleScalar);
circleScalar -= decreaseInScalar;

//draw fourth circle
fill(255, 0, 0);
ellipse(width/2, height/2, width*circleScalar, height*circleScalar);
circleScalar -= decreaseInScalar;

//draw fifth circle
fill(255, 255, 0);
ellipse(width/2, height/2, width*circleScalar, height*circleScalar);
circleScalar -= decreaseInScalar;