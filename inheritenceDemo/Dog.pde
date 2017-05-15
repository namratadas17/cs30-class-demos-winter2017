class Dog extends Mammal {
  
  Dog() {
    super();  //run the superclass constructor
  }
  
  void bark() {
    println("WOOF!");
  }
  
  void sleep() {
     //overriding the parent sleep function
     println("rover... chasing cars dream..."); 
     
     //could still call the parent sleep function if desired
     super.sleep();
  }
}