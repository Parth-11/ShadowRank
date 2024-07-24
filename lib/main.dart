import 'package:architect_system_app/screens/quest_page.dart';
import 'package:flutter/material.dart';
import 'package:architect_system_app/screens/welcome_screen.dart';
import 'package:architect_system_app/screens/login_page.dart';
import 'package:architect_system_app/screens/registration_page.dart';
import 'package:architect_system_app/screens/main_page.dart';
import "package:architect_system_app/screens/status_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginPage.id: (context) => const LoginPage(),
        RegistrationPage.id: (context) => const RegistrationPage(),
        MainScreen.id: (context) => const MainScreen(),
        StatusPage.id: (context) => const StatusPage(),
        QuestPage.id: (context) => const QuestPage(), 
      },
    );
  }
}
