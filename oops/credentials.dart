class Credentials {
  const Credentials({this.name = 'name', this.password = 'passcode'});
  final String name;
  final String password;

  Credentials copyWith({String? name, String? password}) {
    return Credentials(
      name: name ?? this.name,
      password: password ?? this.password,
    );
  }

  @override
  String toString() {
    return '$name and $password';
  }
}

void main() {
  const cred1 = Credentials();
  final cred2 = cred1.copyWith(name: 'Joel');
  print(cred2);
}
