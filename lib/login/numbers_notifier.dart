import 'package:riverpod/riverpod.dart';

class NumbersNotifier extends StateNotifier<int> {
  NumbersNotifier() : super(0);

  void add(int count) {
    state = state + count;
  }
}
