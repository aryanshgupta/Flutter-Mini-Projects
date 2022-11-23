import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text("Learn Flutter"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          maxLength: 30,
          decoration: InputDecoration(
            labelText: "Username",
            hintText: "Enter your fullname",
            prefixIcon: Icon(Icons.account_circle_rounded),
            border: OutlineInputBorder(),
            // border: InputBorder.none,
          ),
          onChanged: (value) {
            print(value);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello");
        },
        backgroundColor: Colors.redAccent,
        child: Text("Add"),
      ),
    );
  }
}
