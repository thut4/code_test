import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  String name;
  String description;
  int price;
  bool? isFavorite;
  Color color;
  Image image;

  Product(
      {required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image,
      this.isFavorite});
}
