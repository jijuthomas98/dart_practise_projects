class EmailAddress {
  EmailAddress(this.email) {
    if (email.isEmpty) {
      throw FormatException('email cant be empty');
    }
    if (!email.contains('@')) {
      throw FormatException('$email doest contain @');
    }
  }
  final String email;

  @override
  String toString() => '$email';
}

void main() {
  try {
    print(EmailAddress('email@gmail.com'));
    print(EmailAddress('emailgmail.com'));
    print(EmailAddress(''));
  } catch (e) {
    print(e);
  }
}
