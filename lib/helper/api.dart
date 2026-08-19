import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  // get api url
  Future<dynamic> getApiUrl({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
