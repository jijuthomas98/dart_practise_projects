import 'dart:math';

abstract class Shape {
  const Shape();
  double get area;
  double get perimeter;
  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnimplementedError('side parameter is missing ');
      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnimplementedError('radius parameter is missing ');
      default:
        throw UnimplementedError('undefined $type shape ');
    }
  }
}

class Square extends Shape {
  const Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  const Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void printArea(Shape shape) {
  print('shape area : ${shape.area}');
}

void main() {
  final shapesJson = [
    {
      'type': 'square',
      'side': 23.0,
    },
    {
      'type': 'circle',
      'radius': 8.0,
    }
  ];
  final shapes = shapesJson.map((shapeJson) => Shape.fromJson(shapeJson));
  shapes.forEach((shape) {
    printArea(shape);
    print(shape.perimeter);
  });
}
