//core
import 'dart:io';

// import 'package:test/test.dart';

// void t1(){
var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg',
};
// }

void t2() {
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('21st century');
  }

  for (final object in flybyObjects) {
    print(object);
  }
  for (int mouth = 1; mouth <= 12; mouth++) {
    print(mouth);
  }
  while (year < 2016) {
    year += 1;
  }
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void t3() {
  // flybyObjects.where((name)=>name.contains('turn')).forEach(print);
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}

class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate) {
    //init code
    // this.name = 'jayce';
  }

  Spacecraft.unlaunched(String name) : this(name, null);

  //methods
  void describe() {
    print('Spacecraft,$name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, super.launchDate);
}

// class MockSpaceship implements Spacecraft {
//   MockSpaceship();
// }

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('==========');
    describe();
    print('----------');
  }
}

enum PlanetType { terrestrial, gas, ice }

enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  //...
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  const Planet({
    required this.planetType,
    required this.moons,
    required this.hasRings,
  });

  /// 所有实例变量都是 final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

void t4() {
  const oneSecond = Duration(seconds: 1);

  Future<void> printWithDelay(String message) async {
    await Future.delayed(oneSecond);
    print(message);
  }

  Future<void> printWithDelay2(String message) {
    return Future.delayed(oneSecond).then((_) {
      print(message);
    });
  }

  Future<void> createDescriptions(Iterable<String> objects) async {
    for (final object in objects) {
      try {
        var file = File('$object.txt');
        if (await file.exists()) {
          var modified = await file.lastModified();
          print(
            'File for $object already exists.It was modified on $modified.',
          );
          continue;
        }
        await file.create();
        await file.writeAsString('Start describing $object in this file.');
      } on IOException catch (e) {
        print('Cannot create description for $object: $e');
      }
    }
  }

  Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
    for (final object in objects) {
      await Future.delayed(oneSecond);
      yield '${craft.name} files by $object';
    }
  }

  var astronauts = 0;
  if (astronauts == 0) {
    throw StateError('no astronauts.');
  }

  Future<void> describeFlybyObjects(List<String> flybyObjects) async {
    try {
      for (final object in flybyObjects) {
        var description = await File('$object.txt').readAsString();
        print(description);
      }
    } on IOException catch (e) {
      print('Could not describe object:$e');
    } finally {
      flybyObjects.clear();
    }
  }
}

void main() {
  print("hello world");

  t3();

  var voyager = Spacecraft('Voyager I', DateTime(1996, 9, 25));
  voyager.describe();

  var voyagers3 = Spacecraft.unlaunched('jayce');
  voyagers3.describe();

  // final yourPlanet = Planet.earth;
  // if (!yourPlanet.isGiant) {
  //   print('Your planet is not a "giant planet".');
  // }
}

/// 您可以放在变量中的任何内容都是一个 对象 ，并且每个对象都是一个类的实例。即使是数字、函数和 null 也是对象。除了 null （如果您启用了 健全空安全 ）之外，所有对象都继承自 Object 类。
/// 尽管 Dart 是强类型的，但类型注解是可选的，因为 Dart 可以推断类型。在 var number = 101 中， number 被推断为 int 类型。
/// 如果您启用了 空安全 ，除非您声明它们可以，否则变量不能包含 null 。您可以通过在类型的末尾添加问号（ ? ）来使变量可为空。例如， int? 类型的变量可能是整数，也可能是 null 。如果您 知道 某个表达式永远不会计算为 null ，但 Dart 不同意，您可以添加 ! 来断言它不为 null （如果为 null 则抛出异常）。例如： int x = nullableButNotNullInt!
/// 当您想显式声明允许任何类型时，请使用 Object? 类型（如果您已启用空安全）、 Object ，或者——如果您必须将类型检查延迟到运行时—— 特殊类型 dynamic 。
/// Dart 支持泛型类型，例如 List<int> （整数列表）或 List<Object> （任何类型的对象的列表）。
/// Dart 支持顶级函数（例如 main() ），以及与类或对象绑定的函数（分别为 静态 和实例方法）。您也可以在函数中创建函数（ 嵌套 或局部函数）。
/// 同样，Dart 支持顶级 变量 ，以及与类或对象绑定的变量（静态变量和实例变量）。实例变量有时被称为 字段 或属性。
/// 与 Java 不同，Dart 没有 public 、 protected 和 private 关键字。如果标识符以下划线（ _ ）开头，则它对其库是私有的。有关详细信息，请参阅 库和导入 。
/// 标识符可以以字母或下划线（ _ ）开头，后跟任何这些字符加上数字的组合。
/// Dart 同时具有 表达式 （具有运行时值）和 语句 （没有值）。例如， 条件表达式condition ? expr1 : expr2 的值为 expr1 或 expr2 。将其与 if-else 语句 进行比较，后者没有值。语句通常包含一个或多个表达式，但表达式不能直接包含语句。
/// Dart 工具可以报告两种类型的問題： 警告 和 错误 。警告只是表明您的代码可能无法正常工作，但它们不会阻止您的程序执行。错误可以是编译时错误或运行时错误。编译时错误会阻止代码完全执行；运行时错误会导致在代码执行期间引发 异常 。
