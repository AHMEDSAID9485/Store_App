import 'package:store/helper/api.dart';
import 'package:store/models/Product_model.dart';

class GetCategory {
  Future<List<ProductModel>> getcaegory({required String categoryName}) async {
    List<dynamic> data = await API().getApiUrl(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );
    List<ProductModel> products = [];

    for (var product in data) {
      products.add(ProductModel.fromJson(product));
    }
    return products;
  }
}
