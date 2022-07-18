import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/pages/cart/cartlist_card.dart';
import 'package:shopping_cart/pages/cart/controller/cart_controller.dart';

class CartPage extends StatelessWidget {
  final controller = Get.find<CartController>();
  CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text("Shopping Bag"),
      ),
      body: Obx(
        () => Column(
          children: [
            Container(
              color: Colors.white,
              height: 680,
              child: controller.cartList.isEmpty
                  ? cartIsEmpty()
                  : ListView.builder(
                      itemCount: controller.cartList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CartListCard(
                          product: controller.cartList.keys.toList()[index],
                          index: index,
                        );
                      },
                    ),
            ),

            // Divider
            const Divider(
              thickness: 1.5,
              height: 0.0,
            ),

            // SizedBox for spacing
            const SizedBox(
              height: 18.0,
            ),
            // Cart Total Amount
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text(
                      controller.cartList.isEmpty
                          ? "₹0"
                          : "₹${controller.total}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 40.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.snackbar(
                          "Payment Successful",
                          "Order has been placed.",
                          duration: const Duration(seconds: 1),
                          snackPosition: SnackPosition.BOTTOM,
                          // snackStyle: SnackStyle.GROUNDED,
                        );
                      },
                      child: const Text(
                        "Pay",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  cartIsEmpty() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Hey, it feels so light!",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "There is nothing in your bag. Let's add some items.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
