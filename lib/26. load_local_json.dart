import 'dart:convert';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Load local JSON file"),
      ),
      body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('data_repo/json_data.json'),
          builder: (context, snapshot) {
            var new_data = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Name: ${new_data[index]['name']}"),
                      Text("Height: ${new_data[index]['height']}"),
                      Text("Mass: ${new_data[index]['mass']}"),
                      Text("Hair Color: ${new_data[index]['hair_color']}"),
                      Text("Skin Color: ${new_data[index]['skin_color']}"),
                      Text("Eye Color: ${new_data[index]['eye_color']}"),
                      Text("Birth Year: ${new_data[index]['birth_year']}"),
                      Text("Gender: ${new_data[index]['gender']}")
                    ],
                  ),
                );
              },
              itemCount: new_data == null ? 0 : new_data.length,
            );
          },
        ),
      ),
    );
  }
}
