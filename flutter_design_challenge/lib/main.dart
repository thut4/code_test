import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/controller/product_controller.dart';
import 'package:flutter_design_challenge/models/model.dart';
import 'package:flutter_design_challenge/views/product_list.dart';
import 'package:get/get.dart';

import 'binding/binding.dart';
import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      // home: ProductList(),
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
