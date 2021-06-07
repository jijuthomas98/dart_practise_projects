mixin Swim {
  void swiming() => print('swimming');
}

class Animal {
  void breathing() => print('all animals can breath');
}

class Fish extends Animal with Swim {}

class Human extends Animal {}

void main() {
  final human = Human();
  human.breathing();
  final fish = Fish();
  fish.swiming();
}
