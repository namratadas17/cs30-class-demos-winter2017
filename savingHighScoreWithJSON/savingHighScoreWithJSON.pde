JSONObject highscore;
String whoOwnsHighScore;
int currentHighScore;
int score;

void setup() {
  size(600, 600);
  score = 0;
  highscore = loadJSONObject("highscore.json");
  whoOwnsHighScore = highscore.getString("name");
  currentHighScore = highscore.getInt("score");
}

void draw() {
  background(255);
  fill(0);
  textSize(32);
  
  //display high score
  text(whoOwnsHighScore, 25, 50);
  text(currentHighScore, 25, 100);
  
  //display current score
  fill(255, 0, 0);
  text(score, width/2, height/2);
}

void mousePressed() {
  score++;
  checkIfNewHighscore();
}

void checkIfNewHighscore() {
  if (score > currentHighScore) {
    //save new highscore into the JSON file
    highscore.setInt("score",score);
    saveJSONObject(highscore, "data/highscore.json");
  }
}