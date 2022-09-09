import 'package:flutter_application/views/detail_page.dart';
import 'package:flutter_application/views/order_page.dart';
import 'package:flutter_application/views/report_page.dart';
import 'package:get/get.dart';

import '../views/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.DETAIL,
        page: () => DetailPage(),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: Routes.ORDER,
        page: () => OrderPage(),
        transition: Transition.fade),
    GetPage(
      name: Routes.REPORT,
      page: () => ReportPage(),
    ),
    GetPage(
        name: Routes.HOME, 
        page: () => HomePage(), 
        transition: Transition.fade),
  ];
}
