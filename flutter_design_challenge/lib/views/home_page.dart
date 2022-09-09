import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/models/model.dart';
import 'package:flutter_design_challenge/views/product_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = ["All", "Jordan", "Running", "Golf", "Casual"];
  int selectedIndex = 0;
  // late final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/photos/male-profile-silhouette-picture-id184360811?k=20&m=184360811&s=170667a&w=0&h=mMdU7Kw99Ji3OLuzEHf8Jrvv0tzCxOdIwBiM7ta1GIs='),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nike Collection',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    const Text(
                      'Everything you need at once.',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    searchBar(),
                    const SizedBox(
                      height: 15,
                    ),
                    headingCategories(),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              // itemCard()
              ProductList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        // onTap: selectedIndex.changeTabIndex,
        // currentIndex: selected.tabIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          _bottomNavigationBarItem(icon: Icons.home, label: 'Home'),
          _bottomNavigationBarItem(
              icon: Icons.shopping_basket_outlined, label: 'Cart'),
          _bottomNavigationBarItem(icon: Icons.favorite, label: 'Favorite'),
          _bottomNavigationBarItem(icon: Icons.person, label: 'Person'),
        ],
      ),
    );
  }

  Widget headingCategories() {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: 70,
                      height: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.0,
                            style: selectedIndex == index
                                ? BorderStyle.solid
                                : BorderStyle.none),
                        borderRadius: BorderRadius.circular(20),
                        color: selectedIndex == index
                            ? Colors.black
                            : Colors.transparent,
                      ),
                      child: Text(
                        categories[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }

  Widget searchBar() {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: const Icon(Icons.search),
          hintText: 'Search here...',
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
      onChanged: (value) {
        // do something
      },
    );
  }

  _bottomNavigationBarItem({IconData? icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
