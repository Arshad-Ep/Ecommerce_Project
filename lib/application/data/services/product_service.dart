import 'dart:convert';

import 'package:commercejs_project/application/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductService {
    Future<List<ProductModel>> fetchData() async {
    final response = await http.get(
      Uri.parse("https://api.chec.io/v1/products?limit=50"),
      headers: {'X-Authorization': 'pk_57027567631c9dd1d789df49575846741747d162f3168'},
    );
    debugPrint(response.body);
    print(response.statusCode);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body)['data'] as List;
      return jsonData.map((item) => ProductModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}