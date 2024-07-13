import 'package:architect_system_app/constants/ProfilePage/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class FriendAvatar extends StatelessWidget {
  final Function() tap;
  final Image avatar;
  final String friendName;

  const FriendAvatar({
    super.key,
    required this.tap,
    required this.avatar,
    required this.friendName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: tap,
          child: const CircleAvatar(
            radius: 40,
            child: Image(
              image: AssetImage('assets/images/Avatar.png'),
            ),
          ),
        ),
        StrokeText(
          text: friendName,
          textStyle: style1,
        )
      ],
    );
  }
}
