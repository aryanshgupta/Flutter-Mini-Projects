import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'My First App',
        home: Scaffold(
          backgroundColor: Colors.blue.shade100,
          appBar: AppBar(
            title: Text("Micronsol"),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Text(
              "My first flutter app",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Hello");
            },
            child: Text("Add"),
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
