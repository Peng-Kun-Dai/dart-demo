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
    // 当您将变量标记为 late 但在其声明处对其进行初始化时，则在第一次使用该变量时运行初始化程序。这种延迟初始化在以下几种情况下非常方便：
    // 可能不需要该变量，并且初始化该变量的成本很高。
    // 您正在初始化实例变量，并且其初始化程序需要访问this
    // late String temperature = readThermometer();
  }
  {
    //如果您不打算更改变量，请使用 final 或 const ，替换 var 或添加到类型中。
    // final 变量只能设置一次；
    // const 变量是编译时常量。（ const 变量隐式为 final 。）

    // 虽然不能修改 final 对象，但可以更改其字段。
    // 相比之下，不能更改 const 对象及其字段：它们是 不可变的 。
    final name = 'Bob';
    final String nickname = 'Bobby';

    {
      final Object personal;
      personal = (name: 'jayce', age: 22);
      // personal.na
    }

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
