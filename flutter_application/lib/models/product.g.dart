// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      name: json['name'] as String,
      brand: json['brand'] as String,
      product_type: json['product_type'] as String,
      price: (json['price'] as num).toDouble(),
      rating: json['rating'] as int,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'brand': instance.brand,
      'name': instance.name,
      'product_type': instance.product_type,
      'price': instance.price,
      'description': instance.description,
      'rating': instance.rating,
    };
