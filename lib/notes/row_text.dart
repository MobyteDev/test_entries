import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  const RowText({
    Key? key,
    required this.priority,
    required this.text,
    required this.pressChange,
    required this.pressAddPriority,
    required this.pressDelete,
  }) : super(key: key);

  final int priority;
  final String text;
  final VoidCallback pressChange;
  final VoidCallback pressAddPriority;
  final VoidCallback pressDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            '$text $priority',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: pressChange,
                child: const Text('Изменить текст'),
              ),
              TextButton(
                onPressed: pressAddPriority,
                child: const Text('Добавить приоритет'),
              ),
              TextButton(
                onPressed: pressDelete,
                child: const Text('Удалить'),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
