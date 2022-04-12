import 'package:flutter/material.dart';

import 'box_text.dart';

class NotepadePage extends StatelessWidget {
  NotepadePage({Key? key}) : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: BoxText(
            controller: controller,
          ),
        ),
      ),
    );
  }
}
