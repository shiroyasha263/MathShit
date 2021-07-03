void MatrixCopy(Matrix A, Matrix B){
  for(int i = 0; i < A.r; i++){
    for(int j = 0; j < A.c; j++){
      B.M[i][j] = A.M[i][j];
    }
  }
}
