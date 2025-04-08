void main() {
  // TODO: 重构为 AbstractLlamaGreetingFactory？
  print('欢迎来到我的羊驼农场！');

  /*
   * 这是很多工作。考虑养鸡。

  Llama larry = Llama();
  larry.feed();
  larry.exercise();
  larry.clean();
   */
}

class Food {}

class Activity {}

/// 一种驯养的南美骆驼科动物（羊驼）。
///
/// 安第斯文化自前西班牙时代以来就一直将羊驼用作肉类和驮畜。
///
/// 与任何其他动物一样，羊驼也需要吃东西，
/// 所以不要忘记用一些 [Food] [feed] 它们。
class Llama {
  String? name;

  /// 用 [food] 喂你的羊驼。
  ///
  /// 一只典型的羊驼每周吃一捆干草。
  void feed(Food food) {
    // ...
  }

  /// 用 [activity] 活动让你的羊驼锻炼 [timeLimit] 分钟。
  void exercise(Activity activity, int timeLimit) {
    // ...
  }
}
