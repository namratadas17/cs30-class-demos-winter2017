class Score {
  int p1Score, p2Score;
  int winningAmount;
  
  Score() {
    resetScores();
    winningAmount = 5;
  }
  
  void display() {
    textSize(36);
    fill(0);
    
    //p1 score
    textAlign(LEFT);
    text(p1Score, 25, 50);
    
    //p2 score
    textAlign(RIGHT);
    text(p2Score, width-25, 50);
  }
  
  void resetScores() {
    p1Score = 0;
    p2Score = 0;
  }
  
  void pointForPlayer1() {
    p1Score++;
  }
  
  void pointForPlayer2() {
    p2Score++;
  }
  
  boolean hasSomebodyWon() {
    if (p1Score >= winningAmount || p2Score >= winningAmount) {
      return true;
    }
    else {
      return false;
    }
  }
}