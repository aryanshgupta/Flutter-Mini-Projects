import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Icon(
            Icons.airport_shuttle,
            size: 160.0,
            color: Colors.blue,
          ),
          Text("Third Tab")
        ],
      ),
    );
  }
}
