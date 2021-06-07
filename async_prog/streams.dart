Future<void> main() async {
  final stream = Stream<int>.fromIterable([1, 2, 4, 5, 6, 7, 8]);
  final sum = await sumStream(countStream(5));
  print(sum);
  final sum2 = await sumStreamFor(stream);
  print(sum2);
  final value = await countStream(10);
  final sum3 = await sumStreamFor(value);
  print(sum3);
}

Future<int> sumStream(Stream<int> stream) async {
  return stream.reduce((previous, element) => previous + element);
}

Future<int> sumStreamFor(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Stream<int> countStream(int n) async* {
  for (var i = 0; i <= n; i++) {
    yield i;
  }
}
