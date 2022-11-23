import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'My First App',
        home: Scaffold(
          backgroundColor: Colors.blue.shade100,
          appBar: AppBar(
            title: Text("Learn Flutter"),
            centerTitle: true,
          ),
          body: Center(child: Text("My first flutter app")),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Hello");
            },
            child: Text("Add"),
          ),
        ),
      ),
    );
