int[] someList = {5,15,3,8,9,1,20,7};

void bubbleSort(int[] aList) {
  
  boolean swapRequired = true;
  
  while (swapRequired) {
    swapRequired = false;
    
    //one pass is going through the array one time
    for (int i=0; i<aList.length-1; i++) {
      //check if need to swap
      if (aList[i] > aList[i+1]) {
        int temp = aList[i];
        aList[i] = aList[i+1];
        aList[i+1] = temp;
        swapRequired = true;
      }
    }
    println(aList); println();
  }
  
}

void setup() {
  bubbleSort(someList);
  println(someList);
}

void draw() {
}