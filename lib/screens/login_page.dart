import 'dart:convert';
import 'package:architect_system_app/components/background.dart';
import 'package:architect_system_app/components/button.dart';
import 'package:architect_system_app/constants/text_box_const.dart';
import 'package:architect_system_app/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  static const id = 'Login Page';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var url = Uri.parse('http://192.168.29.78:8080/api/v1/player/login');

  String userName = '';
  String password = '';

  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              // const Row(
              //   children: [
              //     Image(image: AssetImage('')),
              //     Image(image: AssetImage(''))
              //   ],
              // ),
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
              TextField(
                onChanged: (value) {
                  userName = value;
                },
                decoration:
                    fieldDecoration.copyWith(hintText: 'Email or Username'),
              ),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                textAlign: TextAlign.center,
                decoration: fieldDecoration.copyWith(hintText: 'Password'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Material(
                  color: Colors.transparent,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
              ),
              Button(
                buttonText: 'Login',
                onPress: () async {
                  try {
                    var response = await http.post(
                      url,
                      headers: <String, String>{
                        'Content-Type': 'application/json; charset=UTF-8',
                      },
                      body: jsonEncode({
                        'username': userName,
                        'password': password,
                      }),
                    );
                    if (response.statusCode == 200) {
                      await Future.delayed(const Duration(seconds: 1));
                      prefs.setString('Token', response.body);
                      if (!context.mounted) return;
                      Navigator.popAndPushNamed(context, MainScreen.id);
                    } else {
                      print('Wrong username or password');
                    }
                  } catch (e) {
                    print('Error message is $e');
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
