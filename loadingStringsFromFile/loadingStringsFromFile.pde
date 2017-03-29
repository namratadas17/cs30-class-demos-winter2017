String[] phrases;

void setup() {
  size(800, 800);
  phrases = loadStrings("phrasesToUse.txt");
  background(255);
  displayRandomPhrase();
}

void draw() {
  
}

void displayRandomPhrase() {
  int numberToDisplay = int(random(phrases.length));
  String thingToShow = phrases[numberToDisplay];
  fill(0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text(thingToShow, width/2, height/2);
}