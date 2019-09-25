void showMap() {
  for (int j = 0; j < Col; j++) {
    for (int i = 0; i < Row; i++) {
      if (map[i][j]) {
        fill(255);
        rect(10*i, 10*j, 20, 20);
      }
    }
  }
}

void createMap() {

  for (int i = 0; i < Row; i++)
    for (int j = 0; j < Col; j++)
      map[i][j] = false;

  int tiles = 0;

  int r = (int)random(Row);
  int c = (int)random(Col);

  map[r][c] = true;

  while (tiles < totalTiles) {
    switch(randomDirection()) {
    case 0:
      if (r < Row-1)
        r++;
      break;
    case 1:
      if (r > 0)
        r--;
      break;

    case 2:
      if (c < Col-1)
        c++;
      break;
    case 3:
      if (c > 0)
        c--;
      break;
    }    

    if (!map[r][c]) {
      map[r][c] = true;
      tiles++;
    }
  }
}

int randomDirection() {
  return (int)random(0, 4);
}
