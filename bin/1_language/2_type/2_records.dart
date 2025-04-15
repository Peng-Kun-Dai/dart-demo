var record = ('first', a: 2, b: true, 'last');

(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  // 变量声明中的记录类型注解：
  (String, int) records;
  // 用记录表达式初始化它：
  records = ('A string', 1);

  // 变量声明中的记录类型注解：
  ({int a, bool b}) record;
  // 用记录表达式初始化它：
  record = (a: 123, b: true);

  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);
  // 编译错误！这些记录类型不同。
  // recordAB = recordXY;

  (int a, int b) recordAB2 = (1, 2);
  (int x, int y) recordXY2 = (3, 4);
  recordAB2 = recordXY2; // 正确。
}
