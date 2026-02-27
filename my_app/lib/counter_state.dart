// counter_state.dart
import 'package:flutter/foundation.dart';

class CounterState extends ChangeNotifier {
  int _count = 0;

  // Getter to expose private state
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();  // Triggers UI rebuild
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
