import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.blue[900]),
        ),
        title: Text(
          "Shopping Bag",
          style: TextStyle(color: Colors.blue[900]),
        ),
      ),
      body: Obx(
        () => Column(
          children: [
            // List of items
            Flexible(
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

            // Total Amount and Pay Button
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
              decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Obx(
                  //   () =>
                  Text(
                    controller.cartList.isEmpty ? "₹0" : "₹${controller.total}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: SizedBox(
                      width: 100.0,
                      height: 40.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                            msg: "Payment Successful",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.grey[600],
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue[800])),
                        child: const Text(
                          "Pay",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // Amount and Pay button
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
              fontWeight: FontWeight.w500,
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
