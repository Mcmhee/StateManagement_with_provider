import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  var _counter = 0;

  int get count {
    return _counter;
  }

  void increase() {
    _counter++;
    notifyListeners();
  }
}
