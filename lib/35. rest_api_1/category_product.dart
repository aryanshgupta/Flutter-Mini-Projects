import 'package:flutter/material.dart';
import 'package:learn_flutter/35.%20rest_api_1/api_service.dart';
import 'package:learn_flutter/35.%20rest_api_1/product_detail.dart';

class CategoryProduct extends StatelessWidget {
  final String categoryName;
  const CategoryProduct({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName.toUpperCase()),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ApiService().getProductByCategory(categoryName),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(
                    snapshot.data[index]['image'],
                    height: 50.0,
                    width: 30.0,
                  ),
                  title: Text(snapshot.data[index]['title']),
                  subtitle: Text("Price - \$${snapshot.data[index]['price']}"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetail(id: snapshot.data[index]['id']),
                      ),
                    );
                  },
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
