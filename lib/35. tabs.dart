import 'package:flutter/material.dart';
import '32. first_tab.dart';
import '33. second_tab.dart';
import '34. third_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Tabs"),
        backgroundColor: Colors.blue,
        bottom: TabBar(
          tabs: const <Tab>[
            Tab(icon: Icon(Icons.favorite)),
            Tab(icon: Icon(Icons.adb)),
            Tab(icon: Icon(Icons.airport_shuttle)),
          ],
          controller: controller,
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const <Widget>[
          First(),
          Second(),
          Third(),
        ],
      ),
    );
  }
}
