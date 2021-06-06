import 'num_parsing.dart';

void main() {
  final strNum = '123';
  final num = int.tryParse(strNum);
  print(strNum.runtimeType);
  print(num.runtimeType);
  strNum.strToNum();
}
