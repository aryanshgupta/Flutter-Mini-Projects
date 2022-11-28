import 'package:flutter/material.dart';
import '46. datatable.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => HomeScreen(),
      //   SettingsScreen.routeName: (context) => SettingsScreen(),
      //   AccountScreen.routeName: (context) => AccountScreen(),
      // },
    );
  }
}
