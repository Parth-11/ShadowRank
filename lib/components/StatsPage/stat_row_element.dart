import 'package:architect_system_app/screens/util_status/stat_row.dart';
import 'package:flutter/material.dart';

class StatRowElement extends StatelessWidget {
  final String label;
  final int value;
  final String imagePath;

  const StatRowElement({
    super.key,
    required this.label,
    required this.value,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image.asset("assets/images/logos/dumbell-logo.png",
        //     width: 24, height: 24),
        // const SizedBox(width: 10),
        // const Expanded(
        //   child: StatRow(label: "STRENGTH", value: 30),
        // ),
        Image.asset(
          imagePath,
          width: 24,
          height: 24,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: StatRow(
            label: label,
            value: value,
          ),
        )
      ],
    );
  }
}
