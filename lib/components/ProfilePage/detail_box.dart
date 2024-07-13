import 'package:architect_system_app/components/ProfilePage/profile_text.dart';
import 'package:flutter/material.dart';
import 'package:architect_system_app/constants/ProfilePage/box_style.dart';

class DetailBox extends StatelessWidget {
  final String heading;
  final String content;

  const DetailBox({super.key, required this.heading, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 120,
      decoration: boxStyle,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileText(
            content: heading,
            size: 22,
          ),
          ProfileText(
            content: content,
            size: 20,
          ),
        ],
      ),
    );
  }
}
