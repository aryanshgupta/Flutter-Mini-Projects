import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  static const path = '/contactus';
  final String name;
  const ContactUs({super.key, this.name = 'None'});

  @override
  Widget build(BuildContext context) {
    String value = '';
    if (ModalRoute.of(context)!.settings.arguments != null) {
      final Map args = ModalRoute.of(context)!.settings.arguments as Map;
      value = args['name'];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15.0),
            Text("Welcome to contact page: ${name == 'None' ? value : name}"),
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
