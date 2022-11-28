import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String username;
  const HomeScreen({super.key, this.username = 'Jeff Bezoz'});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = ['Elon', 'Bill', 'Mark'];
  int i = 0;
  Color color = Colors.red;

  late String name;

  @override
  void initState() {
    super.initState();
    print("init state");
    name = widget.username;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("did change dependencies");
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (this.widget.username != oldWidget.username) {
      print("did update widget");
    }
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build function");
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget - $name"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My name is ${names[i]}'),
            ElevatedButton(
              onPressed: () {
                if (i < names.length - 1) {
                  setState(() {
                    i++;
                  });
                }
              },
              child: Text("Next"),
            ),
            ElevatedButton(
              onPressed: () {
                if (i > 0) {
                  setState(() {
                    i--;
                  });
                }
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            color = Colors.red == color ? Colors.blue : Colors.red;
          });
        },
        backgroundColor: color,
        child: Icon(Icons.color_lens_rounded),
      ),
    );
  }
}
