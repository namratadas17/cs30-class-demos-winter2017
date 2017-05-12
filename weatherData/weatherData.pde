String[] weather;
String thingToLookFor = "Current Conditions: ";
float currentTemp;

void setup() {
  weather = loadStrings("http://weather.gc.ca/rss/city/sk-40_e.xml");

  for (int i=0; i<weather.length; i++) {
    if (weather[i].indexOf(thingToLookFor) != -1) {
      int commaLocation = weather[i].indexOf(",");
      int degreeLocation = commaLocation+1; //because of the space
      int degreeSignLocation = weather[i].indexOf("&");
      String temp = weather[i].substring(degreeLocation, degreeSignLocation);
      print(temp);
      currentTemp = float(temp);
      //println(weather[i]);  //for debugging
    }
  }
}

void draw() {
  if (currentTemp < 15) {
    background(0);
  }
  else {
    background(255, 0, 0);
  }
}