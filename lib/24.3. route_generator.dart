import 'package:flutter/material.dart';
import '23. home.dart';
import '24.2. about_us.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case AboutUs.path:
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => AboutUs(
              name: args,
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('Something went wrong.'),
          ),
        );
      },
    );
  }
}
