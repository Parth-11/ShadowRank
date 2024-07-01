import 'package:architect_system_app/components/background.dart';
import 'package:architect_system_app/components/button.dart';
import 'package:architect_system_app/components/text_box.dart';
import 'package:architect_system_app/screens/main_page.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  static const String id = 'Registration Page';
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: background,
          child: Column(
            children: [
              //Image and Text
              const Row(
                children: [
                  //Text div column
                  Column(
                    children: [],
                  )
                ],
              ),
              const TextBox(),
              const TextBox(),
              const TextBox(),
              Button(
                buttonText: 'Register',
                onPress: () {
                  Navigator.popAndPushNamed(context, MainScreen.id);
                },
                buttonColor: Colors.cyan,
              )
            ],
          ),
        ),
      ),
    );
  }
}
