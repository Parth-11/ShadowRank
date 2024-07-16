import "package:flutter/material.dart";

class StatBar extends StatefulWidget {
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
  State<StatBar> createState() => _StatBarState();
}

class _StatBarState extends State<StatBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(color: Colors.white),
        ),
        // Stack(
        //   children: [
        //     Container(
        //       width: 200,
        //       height: 15,
        //       color: Colors.grey,
        //     ),
        //     Container(
        //       width: (value / maxValue) * 100,
        //       height: 15,
        //       color: const Color.fromRGBO(91, 123, 178, 1),
        //     ),
        //   ],
        // ),
        SizedBox(
          height: 15,
          width: 200,
          child: LinearProgressIndicator(
            value: widget.value / widget.maxValue,
            color: const Color.fromRGBO(91, 123, 178, 1),
            // minHeight: 15,
            borderRadius: const BorderRadius.all(Radius.circular(6)),
          ),
        ),
        Text(
          "${widget.value}/${widget.maxValue}",
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
