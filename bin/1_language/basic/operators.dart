void main() {
  var a = 17;
  var b = 2;
  var c = 3;

  print(b * c);
  print(a / c);
  print(a % c);
  print(a ~/ c);

  print(a++);
  print(a--);

  print(a + b);
  print(c - b);

  print('移位运算:');
  print(1 << 1);
  print(1 << 2);
  print(1 << 3);
  print(1 << 4);
  print(2 >> 1);
  print(-16 >>> 2); //无符号右移

  print('---------');
  print(13.toRadixString(2));
  print(14.toRadixString(2));
  print((13 & 14).toRadixString(2));
  print((13 | 14).toRadixString(2));
  print((13 ^ 14).toRadixString(2));

  print('----------');
  print(true && false);
  print(true || false);
  print(null ?? 1);
  print(true ? 2 : 3);

  print('-------');
  var vars = 5;
  print(vars++); //var
  print(vars--); //var
  print(++vars); //var+1
  print(--vars); //var-1

  {
    var a = 2;
    a *= 3;
    assert(a == 6);
  }

  {
    var isPublic = true;
    var visibility = isPublic ? 'public' : 'private';
    print(visibility);
  }

  {
    // var paint = Paint()
        // ...color =Colors.black
  }
}
