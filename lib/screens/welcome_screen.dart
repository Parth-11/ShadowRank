import 'package:architect_system_app/screens/login_page.dart';
import 'package:architect_system_app/screens/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:architect_system_app/components/button.dart';
import 'package:architect_system_app/components/background.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'Welcome Screen';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: background,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Image hover over Avatar
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  CircleAvatar(
                    backgroundColor: HexColor('#445EF2'),
                    radius: 180,
                  ),
                  const Image(
                    image: AssetImage('assets/images/WelcomeScreen_image.png'),
                    height: 400,
                  )
                ],
              ),
              // Text Discription
              const Column(
                children: [
                  Text(
                    "Lorem Ipsum",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus volutpat bibendum. Phasellus condimentum arcu sit amet nibh convallis mattis. Duis orci dui, bibendum in ultricies at, ultricies rhoncus lorem. Fusce et dignissim nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;"),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Positioned(
                        left: 160,
                        child: Button(
                          buttonText: 'Register',
                          onPress: () {
                            Navigator.pushNamed(context, RegistrationPage.id);
                          },
                        ),
                      ),
                      Button(
                        buttonText: 'Login',
                        onPress: () {
                          Navigator.pushNamed(context, LoginPage.id);
                        },
                        buttonColor: Colors.cyan,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
