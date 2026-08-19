import 'package:store/helper/api.dart';

class GetAllCategories {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> categories = await API().getApiUrl(
      url: 'https://fakestoreapi.com/products/categories',
    );

    return categories;
  }
}
