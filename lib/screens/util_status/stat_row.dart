import "package:flutter/material.dart";

class StatRow extends StatelessWidget {
  final String label;
  final int value;
  final TextStyle? textStyle;

  const StatRow({
    super.key,
    required this.label,
    required this.value,
    this.textStyle,
    
  });

  @override
  Widget build(BuildContext context) {
   final defaultTextStyle = const TextStyle(color: Colors.white);
    final effectiveTextStyle = textStyle ?? defaultTextStyle;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: effectiveTextStyle,
            
          ),
          Text(
            value.toString(),
             style: effectiveTextStyle,
          ),
        ],
      ),
    );
  }
}
