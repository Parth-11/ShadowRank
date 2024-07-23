import 'package:architect_system_app/screens/util_status/stat_row.dart';
import 'package:flutter/material.dart';

class StatRowElement extends StatelessWidget {
  final String label;
  final int value;
  final String imagePath;
  final TextStyle? textStyle;

  const StatRowElement({
    super.key,
    required this.label,
    required this.value,
    required this.imagePath,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {

    final defaultTextStyle = TextStyle(color: Colors.white); 
    final effectiveTextStyle = textStyle ?? defaultTextStyle;

    return Row(
      children: [
        Image.asset(
          imagePath,
          width: 24,
          height: 24,
        ),

        const SizedBox(
          width: 10,
        ),

     
        // Image.asset("assets/images/logos/dumbell-logo.png",
        //     width: 24, height: 24),
        // const SizedBox(width: 10),
        // const Expanded(
        //   child: StatRow(label: "STRENGTH", value: 30),
        // ),
        Expanded(
          child: StatRow(
            label: label,
            value: value,
            textStyle: effectiveTextStyle,
            ),
        )
      ],
    );
  }
}
