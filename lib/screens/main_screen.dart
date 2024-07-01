import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'Main Screen';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  void _selectionBottomNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = [Column(), Column(), Column()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan.shade700,
        onTap: _selectionBottomNavigation,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.track_changes_outlined),
            label: 'Quest',
            backgroundColor: Colors.lightBlueAccent.shade200,
          ),
          BottomNavigationBarItem(
              icon: const Icon(Icons.line_style_outlined),
              label: 'Attributes',
              backgroundColor: Colors.lightBlueAccent.shade200),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.lightBlueAccent.shade200,
          ),
        ],
      ),
    );
  }
}
