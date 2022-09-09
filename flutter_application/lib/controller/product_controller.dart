import 'package:get/get.dart';

import '../services/api_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      // var products = await RemoteServices.fetchProducts();
      // if (products != null) {
      //   productList.value = products;
      // }
    } finally {
      isLoading(false);
    }
  }
}