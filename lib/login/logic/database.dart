import 'package:flutter_riverpod/flutter_riverpod.dart';

final databaseProvider = Provider<Database>((ref) => Database());

class Database {
  int pressedCount = 0;

  Future<void> increment() async {}
  Future<void> decrement() async {}
}
