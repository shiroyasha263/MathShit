class Matrix {
  float M[][];
  int r,c;
  int x,y;
  boolean over;
  char sym;

  Matrix(int row, int col, char symb) {
    sym = symb;
    M = new float[row][col];
    r = row;
    c = col;
    x = 0;
    y = 0;
    for (int i = 0; i < r; i++) {
      for (int j = 0; j< c; j++) {
        M[i][j] = -1.123f;
      }
    }
    over = false;
  }

  void show(int n) {
    rectMode(CENTER);
    text(sym + " = ", 200 - 70, 200);
    for (int i = 0; i < min(n,r); i++) {
      for (int j = 0; j< min(n,c); j++) {
        fill(255);
        rect(200 + j*70, 200 + i*70, 50, 50);
        if (M[i][j] != -1.123f) {
          fill(0);
          textSize(14);
          text(str(M[i][j]), 200 + j*70, 200 + i*70);
        }
      }
    }
  }
  
  void update(int n){
    if(y < min(n,c) && x < min(n,r)){
      textSize(26);
      text("a" + str(x) + str(y), width/2 + 200, height - 100);
      float var = Order();
      if(var != -1.123f){
        M[x][y] = var;
        y++;
      }
    }
    else if(x < min(n,r)){
      x++;
      y = 0;
    }
    else{
      over = true;
    }
  }
  
  void prin(){
    for (int i = 0; i < r; i++) {
      for (int j = 0; j< c; j++) {
        print(M[i][j]);
      }
      print('\n');
    }
  }
}
