import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:test_entries/notes/row_text.dart';

class AddActions {}

int counterReducer(int state, dynamic action) {
  if (action is AddActions) {
    return state + 1;
  }

  return state;
}

class NotesPage extends StatelessWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Store<int> store = StoreProvider.of<int>(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            StoreConnector<int, int>(
              converter: (store) => store.state,
              builder: (context, state) => RowText(
                priority: state,
                text: 'qwewq',
                pressChange: () {},
                pressAddPriority: () {
                  store.dispatch(AddActions());
                },
                pressDelete: () {},
              ),
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
