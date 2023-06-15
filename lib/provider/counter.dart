import 'package:hooks_riverpod/hooks_riverpod.dart';

final countProvider = StateNotifierProvider((ref) {
  return Counter();
});

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state = state + 1;
  void decrement() => state = state - 1;
  void reset() => state = 0;
}
