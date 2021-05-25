import 'dart:io';

void main(List<String> arg) {
  if (arg.isEmpty) {
    print('input_file.csv not added');
    exit(1);
  }
  print(arg.first);
}
