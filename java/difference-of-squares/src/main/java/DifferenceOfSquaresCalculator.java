public final class DifferenceOfSquaresCalculator {

  public int computeSquareOfSumTo(int num) {
    int sum = 0;
    for (int i = 0; i <= num; i++) {
      sum += i;
    }
    return (int) Math.pow(sum, 2);
  }

  public int computeSumOfSquaresTo(int num) {
    int sum = 0;
    for (int i = 0; i <= num; i++) {
      sum += (int) Math.pow(i, 2);
    }
    return sum;
  }

  public int computeDifferenceOfSquares(int num) {
    int squareOfSum = computeSquareOfSumTo(num);
    int sumOfSquares = computeSumOfSquaresTo(num);
    return Math.abs(sumOfSquares - squareOfSum);
  }

}
