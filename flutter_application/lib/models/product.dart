import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  String brand;
  String name;
  String product_type;
  double price;
  String description;
  int rating;

  Product({
    required this.name,
    required this.brand,
    required this.product_type,
    required this.price,
    required this.rating,
    required this.description,
  });
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
