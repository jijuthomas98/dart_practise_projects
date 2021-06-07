import 'package:equatable/equatable.dart';

class Point extends Equatable {
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  List<Object?> get props => [x, y];

  @override
  bool? get stringify => true;
  Point operator +(Point other) => Point(x + other.x, y + other.y);
  Point operator /(Point other) => Point(x ~/ other.x, y ~/ other.y);
}

void main() {
  print(Point(1, 2));
  print(Point(1, 2) / Point(4, 2));
  print(Point(1, 2) + Point(4, 2));
}
