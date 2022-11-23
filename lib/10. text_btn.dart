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
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: Colors.red,
            padding: EdgeInsets.all(15.0),
            backgroundColor: Colors.black,
          ),
          child: Text("Click me"),
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
