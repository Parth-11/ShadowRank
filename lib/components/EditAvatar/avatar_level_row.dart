import 'package:flutter/material.dart';
import 'avatar_image_paths.dart';

class AvatarLevelRow extends StatelessWidget {
  final int level;

  const AvatarLevelRow({super.key,required this.level});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'LEVEL $level',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 80, 
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, 
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      radius: 30, 
                      backgroundImage: AssetImage('assets/avatar_${level}_${index + 1}.png'), 
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
