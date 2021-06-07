class PositiveInt {
  const PositiveInt(this.value) : assert(value >= 0);
  final int value;
}

void signIn(String email, String password) {
  assert(email.isNotEmpty);
  assert(password.isNotEmpty);
}

void main() {
  const num = PositiveInt(11);
  print(num.value);
  signIn('', '');
}
