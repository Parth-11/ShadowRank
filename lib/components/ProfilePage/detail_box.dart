import 'package:flutter/material.dart';
import 'package:architect_system_app/constants/ProfilePage/box_style.dart';

class DetailBox extends StatelessWidget {
  const DetailBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 120,
      decoration: boxStyle,
    );
  }
}
