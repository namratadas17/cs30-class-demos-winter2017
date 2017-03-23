PShape canadaMap;
PShape sask;

void setup() {
  size(800, 800);
  canadaMap = loadShape("canadaHigh-ill.svg");
  sask = canadaMap.getChild("CA-SK");
  canadaMap.disableStyle();
}

void draw() {
  background(255);
  
  fill(255);
  shape(canadaMap, 0, 0, canadaMap.width, canadaMap.height);
  
  fill(0, 255, 0);
  shape(sask, 0, 0, canadaMap.width, canadaMap.height);
}