

void setup() {
  println(fib(7));
}


void draw() {
   
}

int fib(int n) {
  //base cases -- exit strategy
  if (n == 1 || n == 2) {
    return 1;
  }
  else { 
    return fib(n-1) + fib(n-2);
  }
}