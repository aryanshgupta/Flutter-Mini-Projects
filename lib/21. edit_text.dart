import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = 'Aryansh';
  @override
  Widget build(BuildContext context) {
    debugPrint("Widget is rendering");
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) {
              setState(() {
                name = value;
              });
              debugPrint("SetState is called");
            },
          ),
          Text('Hello $name'),
        ],
      ),
    );
  }
}
