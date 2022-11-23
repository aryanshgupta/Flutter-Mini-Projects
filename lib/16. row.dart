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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Hi, this is Aryansh"),
          ElevatedButton(
            onPressed: () {},
            child: Text("Chat"),
          ),
          Image.asset(
            'assets/images/birds.png',
            height: 100.0,
            width: 100.0,
          ),
        ],
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
