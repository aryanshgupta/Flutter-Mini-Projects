import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showIt(context) async {
    switch (await showDialog(
      context: context,
      builder: (BuildContext inContext) {
        return SimpleDialog(
          title: Text("What's your favorite food?"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(inContext, "brocolli");
              },
              child: Text("Brocolli"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(inContext, "steak");
              },
              child: Text("Steak"),
            )
          ],
        );
      },
    )) {
      case "brocolli":
        print("Brocolli");
        break;
      case "steak":
        print("Steak");
        break;
    }
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
