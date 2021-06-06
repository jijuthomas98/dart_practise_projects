extension IterableSum<T extends num> on Iterable<T> {
  T? sum() => this.reduce((value, element) => (value + element) as T);
}

void main() {
  final sum = [1, 2, 4, 5].sum();
  final sum2 = [1.2, 2.0, 4.2, 5.9].sum();
  print(sum);
  print(sum2);
}
