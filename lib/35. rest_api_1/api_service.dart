import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  Future getAllPosts() async {
    final allProductUrl = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(allProductUrl);
    // debugPrint(response.statusCode.toString());
    // debugPrint(response.body);
    return json.decode(response.body);
  }

  Future getSingleProduct(int id) async {
    final singleProductUrl = Uri.parse("https://fakestoreapi.com/products/$id");
    final response = await http.get(singleProductUrl);
    // debugPrint(response.statusCode.toString());
    // debugPrint(response.body);
    return json.decode(response.body);
  }

  Future getAllCategory() async {
    final allCategoryUrl = Uri.parse("https://fakestoreapi.com/products/categories");
    final response = await http.get(allCategoryUrl);
    // debugPrint(response.statusCode.toString());
    // debugPrint(response.body);
    return json.decode(response.body);
  }

  Future getProductByCategory(String catName) async {
    final fetchProductCategoryUrl =
        Uri.parse("https://fakestoreapi.com/products/category/$catName");
    final response = await http.get(fetchProductCategoryUrl);
    // debugPrint(response.statusCode.toString());
    // debugPrint(response.body);
    return json.decode(response.body);
  }

  Future getCart(String userId) async {
    final fetchCartProducts = Uri.parse("https://fakestoreapi.com/carts/$userId");
    final response = await http.get(fetchCartProducts);
    // debugPrint(response.statusCode.toString());
    // debugPrint(response.body);
    return json.decode(response.body);
  }

  Future userLogin(String username, String password) async {
    final loginUrl = Uri.parse("https://fakestoreapi.com/auth/login");
    final response = await http.post(loginUrl, body: {
      'username': username,
      'password': password,
    });
    // debugPrint(response.statusCode.toString());
    // debugPrint(response.body);
    return json.decode(response.body);
  }
}
