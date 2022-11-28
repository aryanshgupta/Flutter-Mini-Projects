import 'package:flutter/material.dart';
import 'package:learn_flutter/24.%20contact_us.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var result = await Navigator.pushNamed(
              context,
              ContactUs.routeName,
              arguments: {"name": "John"},
            );
            print(result);

            // Navigator.pushReplacementNamed(context, ContactUs.routeName);

            // var result = await Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => ContactUs(name: "123"),
            //   ),
            // );
            // print(result);

            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => ContactUs(),
            //   ),
            // );
          },
          child: Text("Contact Us"),
        ),
      ),
    );
  }
}
