import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static const path = '/about-us';
  final String name;
  const AboutUs({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15.0),
            Text("Welcome to about page: $name"),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "bye bye...");
              },
              child: Text("Go back"),
            ),
          ],
        ),
      ),
    );
  }
}
