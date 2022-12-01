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

            // ------------------------------------------------------
            // var result = await Navigator.pushReplacementNamed(
            //   context,
            //   ContactUs.path,
            //   arguments: {"name": "Bill"},
            // );
            // debugPrint(result.toString());

            // ------------------------------------------------------
            // var result = await Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => ContactUs(name: "Peter"),
            //   ),
            // );
            // debugPrint(result);

            // ------------------------------------------------------
            // var result = await Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => ContactUs(name: "Elon"),
            //   ),
            // );
            // debugPrint(result);
          },
          child: Text("Contact Us"),
        ),
      ),
    );
  }
}
