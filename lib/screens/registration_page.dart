import 'dart:convert';

import 'package:architect_system_app/components/background.dart';
import 'package:architect_system_app/components/button.dart';
import 'package:architect_system_app/constants/text_box_const.dart';
import 'package:architect_system_app/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegistrationPage extends StatefulWidget {
  static const String id = 'Registration Page';
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var url = Uri.parse('http://192.168.29.78:8080/api/v1/player/register');

  String email = '';
  String userName = '';
  String password = '';
  int age = 0;

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
                onChanged: (value) {
                  email = value;
                },
                decoration: fieldDecoration.copyWith(hintText: 'Email'),
              ),
              TextField(
                onChanged: (value) {
                  userName = value;
                },
                decoration: fieldDecoration.copyWith(hintText: 'Username'),
              ),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                decoration: fieldDecoration.copyWith(hintText: 'Password'),
              ),
              TextField(
                onChanged: (value) {
                  age = int.parse(value);
                },
                decoration: fieldDecoration.copyWith(hintText: 'Age'),
              ),
              Button(
                buttonText: 'Register',
                onPress: () async {
                  try {
                    var response = await http.post(url,
                        headers: <String, String>{
                          'Content-Type': 'application/json; charset=UTF-8',
                        },
                        body: jsonEncode({
                          'username': userName,
                          'password': password,
                          'age': age,
                          'email': email
                        }));
                    print(response.statusCode);
                    print(response.body);
                    if (response.statusCode == 200) {
                      await Future.delayed(const Duration(seconds: 2));
                      if (!context.mounted) return;
                      Navigator.popAndPushNamed(context, MainScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  }
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
