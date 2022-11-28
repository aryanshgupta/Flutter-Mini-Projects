import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
          padding: EdgeInsets.all(5.0),
          crossAxisCount: 4,
          childAspectRatio: 1.0,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: const [
            GridTile(child: FlutterLogo()),
            GridTile(child: FlutterLogo()),
            GridTile(child: FlutterLogo()),
            GridTile(child: FlutterLogo()),
            GridTile(child: FlutterLogo()),
            GridTile(child: FlutterLogo()),
            GridTile(child: FlutterLogo()),
            GridTile(child: FlutterLogo()),
            GridTile(child: FlutterLogo())
          ],
        ),
      ),
    );
  }
}
