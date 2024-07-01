import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:architect_system_app/components/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.bottomEnd,
              end: Alignment.topCenter,
              colors: [
                HexColor('#0a1543'),
                HexColor('#1b45d7'),
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Button(
                      buttonText: 'Login',
                      onPress: () {},
                      buttonColor: Colors.cyan,
                    ),
                  ),
                  Expanded(
                    child: Button(
                      buttonText: 'Register',
                      onPress: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
