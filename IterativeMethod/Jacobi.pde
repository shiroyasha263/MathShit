Matrix Jacobi(Matrix A, Matrix x, Matrix b, int k, int n) {
  Matrix X, Xnext;
  X = new Matrix(n, 1, 'p');
  MatrixCopy(x, X);
  X.prin();
  Xnext = new Matrix(n, 1, 'X');
  Xnext.prin();
  for (int l = 0; l < k; l++) {
    for (int i = 0; i < n; i++) {
      float sum = 0;
      for (int j = 0; j < n; j++) {
        if (j != i) {
          sum += (A.M[i][j])*(X.M[j][0]);
          print('Y');
        }
      }
      Xnext.M[i][0] = (1/A.M[i][i])*(b.M[i][0] - sum);
    }
    MatrixCopy(Xnext, X);
  }
  return X;
}
