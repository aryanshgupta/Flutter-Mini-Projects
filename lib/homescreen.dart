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
        child: IconButton(
          onPressed: () {
            print("Icon btn");
          },
          color: Colors.red,
          iconSize: 100.0,
          splashColor: Colors.blue,
          icon: Icon(Icons.add_a_photo),
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
