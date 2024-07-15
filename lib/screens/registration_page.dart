import 'package:architect_system_app/components/background.dart';
import 'package:architect_system_app/components/button.dart';
import 'package:architect_system_app/constants/text_box_const.dart';
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
              TextField(
                decoration: fieldDecoration.copyWith(hintText: 'Email'),
              ),
              TextField(
                decoration: fieldDecoration.copyWith(hintText: 'Username'),
              ),
              TextField(
                decoration: fieldDecoration.copyWith(hintText: 'Password'),
              ),
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
