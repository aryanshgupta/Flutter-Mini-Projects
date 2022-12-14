import 'package:flutter/material.dart';
import 'package:learn_flutter/35.%20rest_api_1/api_service.dart';

class ProductDetail extends StatelessWidget {
  final int id;
  const ProductDetail({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: FutureBuilder(
        future: ApiService().getSingleProduct(id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 30.0),
                    Image.network(
                      snapshot.data['image'],
                      height: 200.0,
                      width: double.infinity,
                    ),
                    SizedBox(height: 10.0),
                    Center(
                      child: Text(
                        "\$${snapshot.data['price']}",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      snapshot.data['title'],
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Chip(
                      label: Text(
                        snapshot.data['category'],
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.blueGrey,
                    ),
                    SizedBox(height: 10.0),
                    Text(snapshot.data['description']),
                  ],
                ),
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_shopping_cart_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
