import 'package:flutter_riverpod/flutter_riverpod.dart';

class Provid {
  Provid();
  late WidgetRef ref;
  final counterProvider = StateProvider<int>((ref) => 0);

  int getValue() {
    return ref.watch(counterProvider);
  }

  void plusplus() {
    ref.read(counterProvider.state).update((state) => state + 1);
  }
}
