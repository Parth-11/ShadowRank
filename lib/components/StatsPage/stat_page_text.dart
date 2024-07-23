import 'package:flutter/material.dart';

class StatPageText extends StatelessWidget {
  final String content;
  final double? size;
  final FontWeight weight;

  const StatPageText({
    super.key,
    required this.content,
    this.size,
    this.weight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
      fontFamily: 'RobotoSlab',
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
