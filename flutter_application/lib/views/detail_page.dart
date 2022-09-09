import 'package:flutter/material.dart';
import 'package:flutter_application/models/product.dart';
import 'package:flutter_application/services/api_services.dart';
import 'package:dio/dio.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Product>>(
          future: ApiServices(Dio()).getItem(),
          builder: (content, data) {
            if (data.hasData) {
              List<Product>? product = data.data;
              return ListView.builder(
                  itemCount: product?.length,
                  itemBuilder: (content, index) {
                    return Text(product![index].name);
                  });
            } else if (data.hasError) {
              Text('Error');
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
