void main() {
  {
    var name = 'Bob';
  }
  {
    Object name = 'Bob';
  }
  {
    String name = 'Bob';
  }
  {
    String? name; //可以为null
  }
  {
    String name; //不可以为null
  }
  //dart 所有变量都是对象，初始值都是null
  {
    int? lineCount;
    assert(lineCount == null);
  }
  {
    int lineCount = 0;
  }
  // {
  //   int lineCount;
  //   if (weLikeToCount) {
  //     lineCount = countLines()
  //   } else {
  //     lineCount = 0;
  //   }
  //   print(lineCount);
  // }

  {
    late String description;
    description = 'Feijoada';
    print(description);
  }
  {
    //延迟初始化
    // late String temperature = readThermometer();
  }
  {
    //如果您不打算更改变量，请使用 final 或 const ，替换 var 或添加到类型中。
    // final 变量只能设置一次；
    // const 变量是编译时常量。（ const 变量隐式为 final 。）
    final name = 'Bob';
    final String nickname = 'Bobby';

    {
      final name1;
      name1 = 'xx';
    }
    {
      // const name2;
      // name2='xxx';
    }
    {
      const bar = 100000;
      const double atm = 1.01325 * bar;
    }
    {
      var foo = const [];
      final bar = const [];
      const baz = [];

      foo = [2, 3, 4];
      // bar = [1, 2];
      // baz = [1, 2];
    }
    {
      const Object i = 3;
      const list = [i as int];
      const map = {if (i is int) i: 'int'};
      const set = {if (list is List<int>) ...list};
    }
  }
}
