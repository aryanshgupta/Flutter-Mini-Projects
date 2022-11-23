import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text("Micronsol"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text("Aryansh Gupta"),
              subtitle: Text("Learning flutter"),
              trailing: Icon(
                Icons.delete_rounded,
                color: Colors.red,
                size: 40.0,
              ),
              onTap: () {
                print("tap list tile");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello");
        },
        backgroundColor: Colors.redAccent,
        child: Text("Add"),
      ),
    );
  }
}
