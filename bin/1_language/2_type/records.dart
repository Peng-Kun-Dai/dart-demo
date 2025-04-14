// var record = ('first', a: 2, b: true, 'last');

(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}