// 3 - 19 - 19

int Row = 100, 
    Col = 50;

int totalTiles = 900;

boolean[][] map = new boolean[Row][Col];

int pX = 0, pY = 0;

void setup() {
  //size = Row*10, Col*10
  size(1000, 500);

  createMap();
  setIntialPosition();
}

void draw() {
  background(0);
  noStroke();

  showMap();  
  player(pX,pY);
}
