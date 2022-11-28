import 'package:flutter/material.dart';
import 'package:learn_flutter/24.%20contact_us.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Elon Musk"),
              accountEmail: Text("elon@twitter.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Contact Us"),
              leading: Icon(Icons.call),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var status = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContactUs()),
            );
            print(status);
          },
          child: Text("Goto Second Screen"),
        ),
      ),
    );
  }
}
