import "package:flutter/material.dart";

class StatBar extends StatelessWidget {
  final String label;
  final int value;
  final int maxValue;

  const StatBar({
    super.key,
    required this.label,
    required this.value,
    required this.maxValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
        Stack(
          children: [
            Container(
              width: 200,
              height: 15,
              color: Colors.grey,
            ),
            Container(
              width: (value / maxValue) * 100,
              height: 15,
              color: const Color.fromRGBO(91, 123, 178, 1),
            ),
          ],
        ),
        Text(
          "$value/$maxValue",
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
