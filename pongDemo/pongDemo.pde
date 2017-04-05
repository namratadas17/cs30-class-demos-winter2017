//pong demo
GameManager theGame;

void setup() {
  size(800, 800);
  theGame = new GameManager();
}

void draw() {
  theGame.run(); 
}

void keyPressed() {
  theGame.handleKeyPressed();
}

void keyReleased() {
  theGame.handleKeyReleased();
}