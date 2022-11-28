import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PopupMenuButton(
          onSelected: (String result) {
            print(result);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem(
              value: "copy",
              child: Text("Copy"),
            ),
            PopupMenuItem(
              value: "cut",
              child: Text("Cut"),
            ),
            PopupMenuItem(
              value: "paste",
              child: Text("Paste"),
            )
          ],
        ),
      ),
    );
  }
}
