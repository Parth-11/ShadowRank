import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function()? onPress;
  final String buttonText;
  final Color? buttonColor;

  const Button({
    super.key,
    required this.buttonText,
    required this.onPress,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: MaterialButton(
        onPressed: onPress,
        height: 50,
        minWidth: 180,
        child: Text(buttonText),
      ),
    );
  }
}
