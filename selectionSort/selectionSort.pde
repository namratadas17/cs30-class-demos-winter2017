int[] someList = {5, 1, 4, 2, 8};

void selectionSort(int[] aList) {

  int location = 0;  //leftmost value to start
  while ( location < aList.length ) {
    int smallestValueLocation = location;

    //look for the smallest value left in the array
    for (int i=location; i<aList.length; i++) {
      if (aList[i] < aList[smallestValueLocation]) {
        smallestValueLocation = i;
      }
    }

    //swap the smallest value into the correct spot
    int temp = aList[location];
    aList[location] = aList[smallestValueLocation];
    aList[smallestValueLocation] = temp;

    location++;

    println(aList); 
    println();
  }
}

void setup() {
  selectionSort(someList);
  println(someList);
}

void draw() {
}