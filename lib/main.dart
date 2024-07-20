import 'package:flutter/material.dart';
import 'package:architect_system_app/screens/welcome_screen.dart';
import 'package:architect_system_app/screens/login_page.dart';
import 'package:architect_system_app/screens/registration_page.dart';
import 'package:architect_system_app/screens/main_page.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(
    token: prefs.getString('Token'),
  ));
}

class MyApp extends StatelessWidget {
  final String? token;

  const MyApp({super.key, required this.token});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: (token == null)
          ? WelcomeScreen.id
          : (JwtDecoder.isExpired(token!) == false)
              ? MainScreen.id
              : WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginPage.id: (context) => const LoginPage(),
        RegistrationPage.id: (context) => const RegistrationPage(),
        MainScreen.id: (context) => const MainScreen(),
      },
    );
  }
}
