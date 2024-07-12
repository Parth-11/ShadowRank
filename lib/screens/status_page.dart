import "package:flutter/material.dart";

class StatusPage extends StatelessWidget {
  static const String id = 'Status Page';
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      
      ),
      backgroundColor: Color.fromARGB(255, 88, 105, 112),
      appBar: AppBar(
        title:Text("status"),
      ),
    );
  }
}