import 'package:flutter/material.dart';
import 'package:learn_flutter/24.%20contact_us.dart';

class Home extends StatelessWidget {
  static const path = '/home';
  const Home({super.key});

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
              ContactUs.path,
              arguments: {"name": "John"},
            );
            debugPrint(result.toString());

            // Navigator.pushReplacementNamed(context, ContactUs.routeName);

            // var result = await Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => ContactUs(name: "123"),
            //   ),
            // );
            // debugPrint(result);

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
