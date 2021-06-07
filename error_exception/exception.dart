class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException();
    }
  }
  final int numerator;
  final int denominator;

  double get value => numerator / denominator;
}

void main() {
  try {
    final fraction = Fraction(2, 0);
    print(fraction.value);
  } catch (e) {
    print(e);
  }
}
