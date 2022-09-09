import 'package:flutter/material.dart';
import 'package:flutter_application/views/detail_page.dart';
import 'package:flutter_application/views/report_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mabelline',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.dialpad,
            color: Color.fromARGB(255, 156, 94, 125),
          ),
          onPressed: () {
            Get.to(() => DetailPage());
          },
        ),
        actions: [
          IconButton(
              onPressed: (() {}),
              icon: Icon(Icons.shopping_cart),
              color: Color.fromARGB(255, 156, 94, 125))
        ],
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search),
                    hintText: 'Search here...',
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                onChanged: (value) {
                  // do something
                },
              )),
          Expanded(child: productList()),
        ],
      ),
    );
  }

  Widget productList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              width: 200,
              color: Color.fromARGB(61, 158, 158, 158),
            );
          }),
    );
  }
}
