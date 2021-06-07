class Stack<T> {
  final List<T> _list = [];

  void push(T value) => _list.add(value);

  T pop() => _list.removeLast();

  void viewStack() => print(_list);
}

void main() {
  final stack = Stack();
  stack.push(1);
  stack.push(34);
  stack.viewStack();
  print(stack.pop());
  stack.viewStack();
  final name = Stack<String>();
  name.push('Jiju Thomas');
  name.viewStack();
}
