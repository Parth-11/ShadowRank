import 'package:flutter/material.dart';

class TaskText extends StatelessWidget {
  final String content;
  const TaskText({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}
