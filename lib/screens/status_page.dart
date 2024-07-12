// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class StatusPage extends StatelessWidget {
  static const String id = 'Status Page';
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width:double.infinity,
        height: 100,
        child: Center(
          child: Text(
            'STATUS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      
      ),
      backgroundColor: Color.fromARGB(255, 88, 105, 112),
      appBar: AppBar(
        title:Text("status"),
      ),
      
    );
  }
}