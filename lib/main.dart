import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shopping_cart/pages/cart/cart_page.dart';
import 'package:shopping_cart/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      getPages: [
        GetPage(name: "/home", page: () => Homepage()),
        GetPage(name: "/cartpage", page: () => CartPage()),
      ],
      initialRoute: "/home",
      home: Homepage(),
    );
  }
}
