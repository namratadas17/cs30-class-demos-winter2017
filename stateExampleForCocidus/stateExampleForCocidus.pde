

int state;

void setup() {
  size(600, 600);
  state = 0;
}

void draw() {
  displayAccordingToState();
}

void keyPressed() {
  if (key == ' ') {
    if (state == 0) {
      state = 1;
    }
    else if (state == 1) {
      state = 0;
    }
  }
}

void displayAccordingToState() {
  if (state == 0) {
    displayHomeScreen();
  } else if (state == 1) {
    playTheGame();
  }
}

void displayHomeScreen() {
  background(0);
  fill(255);
  text("It's a thing", width/2, height/2);
}

void playTheGame() {
  background(255);
}