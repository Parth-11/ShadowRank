import "package:flutter/material.dart";



class StatRow extends StatelessWidget {
  final String label;
  final int value;

  const StatRow({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label, 
            style: TextStyle(color: Colors.white),
          ),
          Text(
            value.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
