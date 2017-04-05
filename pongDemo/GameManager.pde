class GameManager {
  Paddle p1, p2;
  Ball theBall;
  Score theScore;
  int state;

  GameManager() {
    theBall = new Ball();
    p1 = new Paddle(75, 'w', 's', 'l');
    p2 = new Paddle(width-75, 'o', 'l', 'r');
    theScore = new Score();
    state = 0;
  }

  void run() {
    //state 0 - start screen, 1 - game play, 2 - winning screen
    if (state == 0) {
      displayStartScreen();
    } else if (state == 1) {
      executeGame();
    } else if (state == 2) {
      displayWinningScreen();
    }
  }

  void displayStartScreen() {
    background(0);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(52);
    text("Pong!\nPress space to start", width/2, height/2);
  }

  void executeGame() {
    background(255);

    p1.move();
    p2.move();
    theBall.move(p1, p2, theScore);

    theBall.display();
    p1.display();
    p2.display();
    theScore.display();

    //check if somebody has won
    if (theScore.hasSomebodyWon()) {
      state = 2;
    }
  }

  void displayWinningScreen() {
    background(0);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(52);
    if (theScore.p1Score > theScore.p2Score) {
      text("Player 1 wins!\nPress space to restart", width/2, height/2);
    }
    else {
      text("Player 2 wins!\nPress space to restart", width/2, height/2);
    }
  }

  void handleKeyPressed() {
    if (state == 0) {
      if (key == ' ') {
        state = 1;
      }
    } else if (state == 1) {
      p1.handleKeyPress();
      p2.handleKeyPress();
    }
    else if (state == 2) {
      if (key == ' ') {
        theScore.resetScores();
        state = 1;
      }
    }
  }

  void handleKeyReleased() {
    if (state == 1) {
      p1.handleKeyRelease();
      p2.handleKeyRelease();
    }
  }
}