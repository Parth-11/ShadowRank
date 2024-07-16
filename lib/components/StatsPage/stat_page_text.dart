import 'package:flutter/material.dart';

class StatPageText extends StatelessWidget {
  final String content;
  final double? size;

  const StatPageText({
    super.key,
    required this.content,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontSize: size,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        shadows: const [
          Shadow(
            blurRadius: 25.0,
            offset: Offset(0, 0),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
