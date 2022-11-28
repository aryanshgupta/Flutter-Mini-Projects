import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Center(
            child: Opacity(
              opacity: .25,
              child: Text("Faded"),
            ),
          ),
          Spacer(),
          Center(
            child: Theme(
              data:
                  ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red)),
              child: Container(
                color: Theme.of(context).colorScheme.secondary,
                child: Text(
                  "Text with a background color",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
          Spacer(),
          Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: const [
                    Color(0xFF000000),
                    Color(0xFFFF0000),
                  ],
                  tileMode: TileMode.repeated,
                ),
              ),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Text(
                  "Hello",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Center(
            child: Container(
              color: Colors.yellow,
              child: Transform(
                alignment: Alignment.bottomLeft,
                transform: Matrix4.skewY(0.4)..rotateZ(-3 / 12.0),
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  color: Colors.red,
                  child: Text("Eat at Joe's!"),
                ),
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
