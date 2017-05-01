int[][] board;
int columns, rows;
float cellSize;


void setup() {
  size(900, 900);

  rows = 40;
  columns = 40;
  board = new int[columns][rows];

  cellSize = width/columns;

  randomizeGrid();
}

void draw() {
  background(255);
  displayBoard();
}

void keyPressed() {
  if (key == ' ') {
    update();
  }
  else if (key == 'r') {
    randomizeGrid();
  }
  else if (key == 'c') {
    board = new int[columns][rows];
  }
}

void mousePressed() {
  //figure out which cell in the grid you're clicking
  int x = int(mouseX / cellSize);
  int y = int(mouseY / cellSize);
  
  //toggle it
  if (board[x][y] == 1) {
    board[x][y] = 0;
  }
  else {
    board[x][y] = 1;
  }
  
}


void update() {
  int[][] next = new int[columns][rows];

  //skip the edges, so I can finish this during class...
  for (int x=1; x<columns-1; x++) {
    for (int y=1; y<rows-1; y++) {

      //add up all the neighbors
      int neighbors = 0;
      for (int i=-1; i<=1; i++) {
        for (int j=-1; j<=1; j++) {
          neighbors += board[x+i][y+j];
        }
      }
      //don't add the current cell as a neighbor
      neighbors -= board[x][y];
      
      //apply rules
      if ((board[x][y] == 1) && (neighbors < 2)) {  //underpopulation
        next[x][y] = 0;
      }
      else if ((board[x][y] == 1) && (neighbors > 3)) {  //overpopulation
        next[x][y] = 0;
      }
      else if ((board[x][y] == 0) && (neighbors == 3)) {  //new birth
        next[x][y] = 1;
      }
      else {
        next[x][y] = board[x][y];
      }
    }
  }
  board = next;
}

void displayBoard() {
  for (int x=0; x<columns; x++) {
    for (int y=0; y<rows; y++) {
      if (board[x][y] == 0) {
        fill(255); //dead
      } else {
        fill(0);  //alive
      }
      rect(x*cellSize, y*cellSize, cellSize, cellSize);
    }
  }
}

void randomizeGrid() {
  for (int x=0; x<columns; x++) {
    for (int y=0; y<rows; y++) {
      board[x][y] = int(random(2));
    }
  }
}