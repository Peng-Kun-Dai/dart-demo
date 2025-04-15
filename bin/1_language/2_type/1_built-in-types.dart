import 'dart:math';

import 'package:characters/characters.dart';

void main() {
  //int double
  {
    int a;
    a = 10;
    double b;
    a.abs();
    a.ceil();
    a.floor();
    b = 1;
    b = 0xDEADBEEF;
    b = 1.1;
    b = 1.42e5;
    //--------------
    num x = 1; //既可以是int也可以是double
    x += 2.5;
    //---
    double z = 1;
    //String=>int
    var one = int.parse('1');
    assert(one == 1);
    //String ->double
    var onePointTwo = double.parse('1.2');
    assert(onePointTwo == 1.2);
    //int=>String
    String oneAsString = 1.toString();
    assert(oneAsString == '1');
    //double=>String
    String piAsString = 3.141592657.toStringAsFixed(2);
    assert(piAsString == '3.14');

    assert((3 << 1) == 6); // 0011 << 1 == 0110
    assert((3 | 4) == 7); // 0011 | 0100 == 0111 //有一个1
    assert((3 & 4) == 0); // 0011 & 0100 == 0000  //均为1
    assert((3 ^ 4) == 7); // 0011 ^ 0100 == 0111  //相同为0，不同为1

    const msPerSecond = 1000;
    const secondsUntilRetry = 5;
    const msUntilRetry = secondsUntilRetry * msPerSecond;

    var n1 = 1_000_000;
    var n2 = 0.000_000_000_01;
    var n3 = 0x00_14_22_01_23_45;
    var n4 = 555_123_4567;
    var n5 = 100__000_000__000_000;
  }
  //String
  {
    var s = 'string interpolation';
    assert(
      'Dart has $s,which is very handy.' ==
          'Dart has string interpolation,'
              'which is very handy.',
    );
    assert(
      'That deserves all caps. '
              '${s.toUpperCase()} is very handy!' ==
          'That deserves all caps. '
              'STRING INTERPOLATION is very handy!',
    );

    var s1 =
        'String '
        'concatenation'
        " works even over line breaks.";
    assert(
      s1 ==
          'String concatenation works even over '
              'line breaks.',
    );

    var s2 = 'The + operator ' + 'works, as well.';
    assert(s2 == 'The + operator works, as well.');

    {
      var s1 = '''
      You can create
      multi-line strings like this one.
      ''';
      var s2 = """
      This is also a
      multi-line string.
      """;
    }

    //原始字符串
    var s3 = r'In a raw string,not even \n gets special treatment.${s1}';

    const aConstNum = 0;
    const aConstBool = true;
    const aConstString = 'a constant string';

    var aNum = 0;
    var aBool = true;
    var aString = 'a string';
    const aConstList = [1, 2, 3];

    const validConstString = '$aConstNum $aConstBool $aConstString';
  }
  //bool
  {
    var fullName = '';
    assert(fullName.isEmpty);
    var hitPoints = 0;
    assert(hitPoints == 0);
    var unicorn = null;
    assert(unicorn == null);
    var iMeantToDoThis = 0 / 0;
    assert(iMeantToDoThis.isNaN);
  }
  //char
  {
    var hi = 'Hi 🇩🇰';
    print(hi);
    print('\u2665');
    print('The end of the string: ${hi.substring(hi.length - 1)}');
    print('The last character: ${hi.characters.last}');
  }
  //symbol
  {

  }
}
