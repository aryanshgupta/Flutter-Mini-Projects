import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text("Micronsol"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Icon(
          Icons.access_alarm,
          color: Colors.blue,
          size: 100.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello");
        },
        child: Text("Add"),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
