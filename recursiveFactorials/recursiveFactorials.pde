

void setup() {
  println(factorial(5));
}


void draw() {
   
}

int factorial(int n) {
  //base case -- exit strategy
  if (n == 1) {
    return 1;
  }
  else { 
    return n * factorial(n-1);
  }
}