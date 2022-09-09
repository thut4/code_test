import 'package:flutter_design_challenge/controller/product_controller.dart';
import 'package:flutter_design_challenge/models/model.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ProductController(Binding));
  }
}
