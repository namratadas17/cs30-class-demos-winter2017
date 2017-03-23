//Chessboard demo
//Mar 13, 2017
//Schellenberg

int rows, cols;
float cellSize;
boolean isFilledBlack;
float theBorderSize;

void setup() {
  size(600, 600);
  rows = 8;
  cols = 8;

  isFilledBlack = false;
  theBorderSize = 15;

  cellSize = (width - theBorderSize) / float(cols);
}

void draw() {
  displayChessBoard();
  displayBorder();
}

void displayBorder() {
  stroke(0);
  strokeWeight(theBorderSize);

  //top
  line(0, 0, width, 0);
  //left
  line(0, 0, 0, height);
  //bottom
  line(0, height, width, height);
  //right
  line(width, 0, width, height);

  noStroke();
}

void displayChessBoard() {
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      if (isFilledBlack) {
        fill(0);
      } else {
        fill(255);
      }
      rect(theBorderSize/2+x*cellSize, theBorderSize/2+y*cellSize, cellSize, cellSize);
      isFilledBlack = !isFilledBlack;
    }
    //flip once more, to reset for next column...
    isFilledBlack = !isFilledBlack;
  }
}