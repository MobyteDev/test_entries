import 'package:flutter/material.dart';
import 'package:test_entries/notes/row_text.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            RowText(
              priority: 2,
              text: 'qwewq',
              pressChange: () {},
              pressAddPriority: () {},
              pressDelete: () {},
            ),
            RowText(
              priority: 1,
              text: 'asdas',
              pressChange: () {},
              pressAddPriority: () {},
              pressDelete: () {},
            ),
            RowText(
              priority: 3,
              text: 'cvzvcz',
              pressChange: () {},
              pressAddPriority: () {},
              pressDelete: () {},
            ),
            RowText(
              priority: 0,
              text: 'djhjf',
              pressChange: () {},
              pressAddPriority: () {},
              pressDelete: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/notepade');
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
