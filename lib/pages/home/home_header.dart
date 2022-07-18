import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/pages/cart/controller/cart_controller.dart';

class HomeHeader extends StatelessWidget {
  final cartController = Get.find<CartController>();
  HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange[400],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        child: SafeArea(
          bottom: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // App Name
              const Text(
                "Shopping App",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),

              // Cart Button
              InkWell(
                onTap: () {
                  Get.toNamed("/cartpage");
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 32.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.shopping_cart,
                          size: 22.0, color: Colors.white),
                      Obx(
                        () => Text(
                          "${cartController.cartList.length}",
                          style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
