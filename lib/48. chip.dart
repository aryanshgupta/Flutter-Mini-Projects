import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          avatar: CircleAvatar(
            backgroundImage: AssetImage("data_repo/img/social/facebook.png"),
          ),
          backgroundColor: Colors.grey.shade300,
          label: Text("Aryansh"),
        ),
      ),
    );
  }
}
