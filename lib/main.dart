import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux/redux.dart';
import 'login/login_page.dart';
import 'notepad/notepad_page.dart';
import 'notes/notes_page.dart';

void main() {
  final store = Store<int>(counterReducer, initialState: 0);
  runApp(
    StoreProvider(
      store: store,
      child: const ProviderScope(
        child: App(),
      ),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      routes: {
        '/': (_) => LoginPage(),
        '/notes': (_) => const NotesPage(),
        '/notepade': (_) => NotepadePage(),
      },
    );
  }
}
