int stage = 0;
String typing = "";
String saved = "";
int n;
int k;
int buffer = 0;
Matrix A,b,x;
boolean case1 = true;
boolean case2 = true;
boolean case3 = true;
boolean case5 = true;

void setup() {
  size(1000, 1000);
  textAlign(CENTER);
  b = new Matrix(10,1,'b');
  x = new Matrix(10,1,'x');
}

void draw() {
  background(80);
  fill(255);
  textSize(26);
  text("Ax = b", width/2, 50);
  rectMode(CENTER);
  noStroke();
  rect(width/2, height - 100, 50, 50);
  switch(stage) {
  case 0:  
    text("Enter the order of A square matrix", width/2, height/2 );
    n = int(Order());
    if (n > 0) {
      stage++;
    }
    break;
  case 1:  
    text("n = " + str(n), width/2, 100 );
    if(case1){
      A = new Matrix(n,n,'A');
      case1 = false;
    }
    A.show(n);
    A.update(n);
    if (A.over) {
      stage++;
    }
    break;
  case 2:
    text("n = " + str(n), width/2, 100 );
    if(case2){
      A.prin();
      x = new Matrix(n,1,'x');
      case2 = false;
    }
    x.show(n);
    x.update(n);
    if (x.over) {
      stage++;
    }
    break;
  case 3:
    text("n = " + str(n), width/2, 100 );
    if(case3){
      x.prin();
      b = new Matrix(n,1,'b');
      case3 = false;
    }
    b.show(n);
    b.update(n);
    if (b.over) {
      stage++;
      b.prin();
    }
    break;
  case 4:  
    text("Enter the number of iteration", width/2, height/2 );
    k = int(Order());
    if (k > 0) {
      stage++;
    }
    break;
  case 5:  
    text("n = " + str(n), width/2, 100 );
    if(case5){
      MatrixCopy(Jacobi(A,x,b,k,n),x);
      case5 = false;
    }
    x.show(n);
    break;
  }
  buffer++;
}

void keyPressed() {
  if (key == '\n' ) {
    saved = typing;
    typing = "";
  } else {
    typing = typing + key;
  }
}
