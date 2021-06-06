extension RangeTo on num {
  Iterable rangeTo(int end) {
    final list = [];
    for (var i = this; i <= end; i++) {
      list.add(i);
    }
    return list;
  }
}

void main() {
  for (var i in 4.rangeTo(10)) {
    print(i);
  }
}
