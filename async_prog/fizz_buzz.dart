Future<void> main() async {
  final str = fizzBuzz(20);
  await for (var value in str) {
    print(value);
  }
}

Stream<String> fizzBuzz(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    if (i % 3 == 0 && i % 5 == 0) {
      yield 'Fizz Buzz';
    } else if (i % 3 == 0) {
      yield 'Fizzz';
    } else if (i % 5 == 0) {
      yield 'Buzz';
    } else {
      yield '$i';
    }
  }
}
