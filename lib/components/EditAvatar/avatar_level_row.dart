import 'package:flutter/material.dart';
import 'avatar_image_paths.dart';

class AvatarLevelRow extends StatelessWidget {
  final int level;

  AvatarLevelRow({required this.level});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'LEVEL $level',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 80, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Number of avatars per level, adjust as needed
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      radius: 30, // Adjust size as needed
                      backgroundImage: AssetImage('assets/avatar_${level}_${index + 1}.png'), // Replace with your avatar image paths
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
