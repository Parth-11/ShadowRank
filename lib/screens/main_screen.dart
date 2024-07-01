import 'package:architect_system_app/components/background.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const String id = 'Main Screen';
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: const Column(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.track_changes_outlined),
              label: 'Quest',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.line_style_outlined), label: 'Attributes'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
