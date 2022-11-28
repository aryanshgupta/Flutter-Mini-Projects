import 'package:flutter/material.dart';

class MyGridView {
  GestureDetector getStructuredGridCell(name, image) {
    return GestureDetector(
      onTap: () {
        print("onTap called on $name");
      },
      child: Card(
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                image: AssetImage('data_repo/img/$image'),
              ),
              SizedBox(height: 15.0),
              Center(
                child: Text(
                  name,
                  style: TextStyle(
                    color: Color.fromARGB(255, 97, 98, 102),
                    fontFamily: 'ProductSans',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(5.0),
      crossAxisCount: 2,
      childAspectRatio: 0.72,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
      children: <Widget>[
        getStructuredGridCell("Facebook", "social/facebook.png"),
        getStructuredGridCell("Twitter", "social/twitter.png"),
        getStructuredGridCell("Instagram", "social/instagram.png"),
        getStructuredGridCell("Linkedin", "social/linkedin.png"),
        getStructuredGridCell("Google Plus", "social/google_plus.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
      ],
    );
  }
}
