import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/models/Product_model.dart';


class GetCategory {

 
  Future<List<ProductModel>> getcaegory({required String categoryName}) async { 

        http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
         
        List<dynamic> data = jsonDecode(response.body);
        
        List<ProductModel> products = [];

        if (response.statusCode == 200) {
            for (var product in data) {
                products.add(ProductModel.fromJson(product));
            }
            return products;
        } else {
            throw Exception('Failed to load products');
        }

        
    }
}