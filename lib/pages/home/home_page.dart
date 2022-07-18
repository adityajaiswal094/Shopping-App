import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/pages/cart/controller/cart_controller.dart';
import 'package:shopping_cart/pages/home/product_list.dart';
import 'package:shopping_cart/pages/home/home_header.dart';

class Homepage extends StatelessWidget {
  final cartController = Get.put(CartController());
  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // App Header
          HomeHeader(),

          // List of Items
          ProductList(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_rounded),
          label: "Favorite",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ]),
    );
  }
}
