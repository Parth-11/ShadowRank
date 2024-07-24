import 'package:flutter/material.dart';
import 'package:architect_system_app/components/EditAvatar/avatar_level_row.dart';

class EditAvatar extends StatelessWidget {
  static const String id = 'Edit Avatar';
  const EditAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CHOOSE avatars '),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/profilePage_bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Text(
                  'CHOOSE AVATARS',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 20,
                        color: Color.fromARGB(255, 96, 129, 174),
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return AvatarLevelRow(level: index + 1);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
