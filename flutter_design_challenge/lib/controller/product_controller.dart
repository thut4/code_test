import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/models/model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList<dynamic> products = [].obs;
  ProductController(controller);
  @override
  void onInit() {
    // TODO: implement onInit
    productInfo();
    super.onInit();
  }

  productInfo() {
    products.add(Product(
        name: 'Nice Air Running',
        description:
            'Best of all in just one \nplace. Finally  your perfect \nproduct only here',
        price: 139,
        color: Color.fromARGB(255, 204, 237, 242),
        image: Image.asset('assets/air.png')));
    products.add(Product(
        name: 'Nice Air Running',
        description:
            'Best of all in just one \nplace. Finally  your perfect \nproduct only here',
        price: 139,
        color: Color.fromARGB(255, 255, 225, 228),
        image: Image.asset('assets/nike_running.png')));
    products.add(Product(
        name: 'Nice Sneaker',
        description:
            'Best of all in just one \nplace. Finally  your perfect \nproduct only here',
        price: 139,
        color: Color.fromARGB(255, 235, 255, 205),
        image: Image.asset('assets/nike_sneaker.png')));
    products.refresh();
  }
}
