import 'package:equatable/equatable.dart';

class Person extends Equatable {
  Person({required this.name, required this.age});
  final String name;
  final int age;

  @override
  List<Object?> get props => [name, age];

  factory Person.fromJson(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];
    if (name is String && age is int) {
      return Person(name: name, age: age);
    }
    throw UnimplementedError('type mismatch');
  }

  Map<String, Object> toJson() => {
        'name': name,
        'age': age,
      };
}

void main() {
  final personsJson = [
    {
      'name': 'Jiju Thomas',
      'age': 23,
    },
    {
      'name': 'Joel',
      'age': 15,
    },
    {
      'name': 'Melissa',
      'age': 23,
    }
  ];
  final personResult = personsJson.map((person) => Person.fromJson(person));
  personResult.forEach((element) {
    print(element);
  });

  final instanceToJson = [];
  personResult.forEach((element) {
    instanceToJson.add(element.toJson());
  });

  print(instanceToJson);
}
