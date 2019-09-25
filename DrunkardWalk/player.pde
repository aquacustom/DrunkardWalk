
void setIntialPosition() {
  pX = (int)random(0,Row); 
  pY = (int)random(0,Col);

  while (!(map[pX][pY])) {
    pX = (int)random(Row); 
    pY = (int)random(Col);
  }
}

void player(int x, int y) {
  fill(255, 0, 0);
  rect(x*10, y*10, 10, 10);
}

void keyPressed(){

  if(key == 'w' && pY > 0 && map[pX][pY-1])
    pY--;
    
  if(key == 's' && pY < Col - 1 && map[pX][pY+1])
    pY++;
    
  if(key == 'a' && pX > 0 && map[pX-1][pY])
    pX--;
    
  if(key == 'd' && pX < Row - 1 && map[pX+1][pY])
    pX++;
    
  if(key == 'r')
    setup();
}
