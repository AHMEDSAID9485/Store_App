import 'package:store/helper/api.dart';
import 'package:store/models/Product_model.dart';

class GetAllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await API().getApiUrl(
      url: 'https://fakestoreapi.com/products',
    );

    List<ProductModel> products = [];

    for (var product in data) {
      products.add(ProductModel.fromJson(product));
    }

    throw Exception('Failed to load products');
  }
}
