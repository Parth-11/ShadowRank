import 'package:architect_system_app/components/ProfilePage/profile_text.dart';
import 'package:flutter/material.dart';
import 'package:architect_system_app/constants/ProfilePage/box_style.dart';

class DetailBox extends StatelessWidget {
  final String heading;
  final String content;
  final double? headingSize;
  final double? contentSize;

  const DetailBox({
    super.key,
    required this.heading,
    required this.content,
    this.headingSize,
    this.contentSize,
  });

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
            size: headingSize,
          ),
          ProfileText(
            content: content,
            size: contentSize,
          ),
        ],
      ),
    );
  }
}
