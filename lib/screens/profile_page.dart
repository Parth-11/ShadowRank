import 'package:architect_system_app/components/button.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CircleAvatar(),
        const Text('Name'),
        const Text('Email'),
        const Text('Age'),
        const Text('Highest attribute'),
        const Text('Friends'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                buttonText: 'Add Friends',
                onPress: () {},
              ),
              Button(
                buttonText: 'Edit Profile',
                onPress: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
