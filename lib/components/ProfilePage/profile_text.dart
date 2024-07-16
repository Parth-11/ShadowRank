import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class ProfileText extends StatelessWidget {
  final String content;
  final double? size;
  final String? family;

  const ProfileText({super.key, required this.content, this.size, this.family});

  @override
  Widget build(BuildContext context) {
    return StrokeText(
      text: content,
      textStyle: TextStyle(
        fontFamily: family,
        fontSize: size,
        color: Colors.white,
      ),
      strokeColor: Colors.black,
      strokeWidth: 3,
    );
  }
}
