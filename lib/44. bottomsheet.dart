import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showIt(context) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext inContext) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("What's your favorite pet?"),
            ElevatedButton(
              child: Text("Dog"),
              onPressed: () {
                Navigator.of(inContext).pop();
              },
            ),
            ElevatedButton(
              child: Text("Cat"),
              onPressed: () {
                Navigator.of(inContext).pop();
              },
            ),
            ElevatedButton(
              child: Text("Ferret"),
              onPressed: () {
                Navigator.of(inContext).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showIt(context),
          child: Text("Show it"),
        ),
      ),
    );
  }
}
