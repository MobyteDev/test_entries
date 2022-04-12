import 'package:flutter/material.dart';

class BoxText extends StatelessWidget {
  const BoxText({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: false,
      maxLines: null,
      expands: true,
      keyboardType: TextInputType.multiline,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}
