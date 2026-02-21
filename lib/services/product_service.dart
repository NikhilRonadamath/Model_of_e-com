import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/product.dart';
import '../models/product.dart';

class ProductService {

  // ⚠️ change IP according to your system
  // emulator -> 10.0.2.2
  // real phone -> your PC IP
  static const String baseUrl = "http://10.0.2.2:8080/api/products";

  static Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      debugPrint(response.body);
      debugPrint(baseUrl);

      return data.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load products");
    }
  }
}