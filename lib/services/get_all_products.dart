import 'dart:convert';

import 'package:store/models/Product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProducts {


    Future<List<ProductModel>> getAllProducts() async { 

        http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
         
        List<dynamic> data = jsonDecode(response.body);
        
        List<ProductModel> products = [];

        if (response.statusCode == 200) {
            for (var product in data) {
                products.add(ProductModel.fromJson(product));
            }
        } else {
            throw Exception('Failed to load products');
        }

        return products;
    }
}