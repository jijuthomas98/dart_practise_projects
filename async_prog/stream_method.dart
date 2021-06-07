Future<void> main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 4, 5]);
  // final value = await stream.first;
  // print(value);
  await stream.forEach((element) {
    print(element);
  });
}
