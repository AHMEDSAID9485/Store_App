import 'dart:convert';

import 'package:http/http.dart' as http;

class GetAllCategories {

  Future<List<dynamic>> getAllCategories() async {
    http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));

    if (response.statusCode == 200) {
      List<dynamic> categories = jsonDecode(response.body);
      return categories;
    } else {
      throw Exception('Failed to load categories');
    }
  }
  
}