import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:laza_shop_clone/class/categories_smartphone.dart';

Future<CategoriesModel> getCategoriesSmartphone() async {
  Uri url = Uri.parse('https://dummyjson.com/products/category/smartphone');

  http.Response response = await http.get(url);

  Map json = jsonDecode(response.body);

  return CategoriesModel.fromJson(json);
}
