class Television {
  @Deprecated('Use turnOn instead')
  void active() {
    turnOn();
  }

  @Deprecated('xxx')
  // @deprecated
  @override
  @pragma('xxx')
  @Todo("x", 'x')

  void turnOn() {}
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

@Todo('Dash', 'Implement this function')
void doSomething() {
  print('Do something.');
}
