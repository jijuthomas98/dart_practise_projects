class Animal {
  Animal(this.age);
  final int age;
  void sleep() => print('sleep');
}

class Dog extends Animal {
  Dog(int age) : super(age);

  void bark() => print('bark');
  @override
  void sleep() {
    super.sleep();
    print('sleep method is overrided');
  }
}

void main() {
  final animal = Animal(23);
  final dog = Dog(34);
  animal.sleep();
  dog.sleep();
}
