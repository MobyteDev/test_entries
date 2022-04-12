import 'package:flutter/material.dart';

import 'login/login_page.dart';
import 'notepad/notepad_page.dart';
import 'notes/notes_page.dart';

void main() => runApp(
      const App(),
    );

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
