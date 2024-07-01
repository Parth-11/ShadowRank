import 'package:architect_system_app/components/background.dart';
import 'package:architect_system_app/components/button.dart';
import 'package:architect_system_app/components/text_box.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {
  static const id = 'Login Page';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                HexColor('#1b45d7'),
                HexColor('#021fa0'),
              ],
              begin: AlignmentDirectional.bottomEnd,
              end: AlignmentDirectional.topEnd,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Images
            const Row(
              children: [
                Image(image: AssetImage('')),
                Image(image: AssetImage(''))
              ],
            ),
            //Text Column Container
            const Column(
              children: [
                Text(
                  'Lorem Ipsum',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a aliquam leo. Vestibulum non quam at ipsum molestie hendrerit. Nunc sit amet urna viverra, euismod arcu posuere, pulvinar dolor.',
                  style: TextStyle(),
                )
              ],
            ),
            const TextBox(),
            const TextBox(),
            Button(
              buttonText: 'Login',
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
