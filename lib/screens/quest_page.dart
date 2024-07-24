import "package:flutter/material.dart";

class QuestPage extends StatelessWidget {
  static const String id = 'Quest Page';
  const QuestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg_stats.jpeg", // Replace with your actual image path
            fit: BoxFit.cover, // Cover the entire screen
          ),
        ],
      ),
    );
  }
}