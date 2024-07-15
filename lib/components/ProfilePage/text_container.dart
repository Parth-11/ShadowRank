import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:hexcolor/hexcolor.dart';

class TextContainer extends StatelessWidget {
  final String content;

  const TextContainer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: const BorderRadiusDirectional.all(
          Radius.circular(20),
        ),
        color: HexColor('4355F5').withOpacity(0.28),
      ),
      child: Center(
        child: StrokeText(
          text: content,
          textStyle: const TextStyle(
            fontFamily: 'Solo Level',
            fontSize: 20,
          ),
          strokeColor: Colors.black,
          strokeWidth: 3,
        ),
      ),
    );
  }
}
