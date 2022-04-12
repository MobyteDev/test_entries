import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_entries/login/logic/database.dart';

// final userProvider = FutureProvider<void>((ref) async {
//   return ref.read(databaseProvider).increment();
// });

final counterController =
    StateProvider<int>((ref) => 0);

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);
  void add() {
    state++;
  }

  void substract() {
    state--;
  }
}
