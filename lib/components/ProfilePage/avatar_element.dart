import 'package:architect_system_app/screens/edit_avatar.dart';
import 'package:flutter/material.dart';

class AvatarElement extends StatelessWidget {
  const AvatarElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: 170,
      child: Stack(
        // alignment: Alignment.center,
        children: [
          const CircleAvatar(
            radius: 90,
            child: Image(image: AssetImage('assets/images/Avatar.png')),
          ),
          Align(
            alignment: const Alignment(1.35, 1),
            child: RawMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, EditAvatar.id);
              },
              elevation: 2.0,
              fillColor: Colors.blueGrey.shade400,
              padding: const EdgeInsets.all(8),
              shape: const CircleBorder(),
              child: const Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }
}
