import 'package:architect_system_app/screens/quest_page.dart';
import 'package:flutter/material.dart';
import 'package:architect_system_app/screens/profile_page.dart';
import "package:architect_system_app/screens/status_page.dart";
import 'package:hexcolor/hexcolor.dart';

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

  static const List<Widget> _pages = [
    ProfilePage(),
    QuestPage(),
    StatusPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.white24,
          ),
          child: BottomNavigationBar(
            backgroundColor: HexColor('#0a1543'),
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.cyan.shade700,
            unselectedItemColor: Colors.blueGrey.shade400,
            onTap: _selectionBottomNavigation,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.lightBlueAccent.shade200,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.track_changes_outlined),
                label: 'Quest',
                backgroundColor: Colors.lightBlueAccent.shade200,
              ),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.line_style_outlined),
                  label: 'Status',
                  backgroundColor: Colors.lightBlueAccent.shade200),
            ],
          ),
        ),
      ),
    );
  }
}
