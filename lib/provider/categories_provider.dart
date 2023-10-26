import 'package:http/http.dart' as http;
import 'dart:convert';

class Categories {
  List categoriesData = [];
  Future getCategories() async {
    Uri url = Uri.parse('https://dummyjson.com/products/categories');

    http.Response response = await http.get(url);

    categoriesData = jsonDecode(response.body);
    return categoriesData;
  }
}
