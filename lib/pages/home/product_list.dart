import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/model/cart.dart';
import 'package:shopping_cart/pages/cart/controller/cart_controller.dart';

class ProductList extends StatelessWidget {
  final cartController = Get.find<CartController>();

  ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.70,
          crossAxisCount: 2,
          crossAxisSpacing: 0.5,
          mainAxisSpacing: 0.5,
        ),
        itemCount: Product.products.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Column(
              children: [
                // Product Image
                SizedBox(
                  height: 190,
                  width: double.infinity,
                  child: Image.network(
                    Product.products[index].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),

                // Product name, price, add to cart button
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Product name, price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Product.products[index].name,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "₹${Product.products[index].price}",
                            style: const TextStyle(fontSize: 13),
                          ),
                        ],
                      ),

                      // Add to Cart Button
                      IconButton(
                        onPressed: () {
                          Product.products[index].isAddedToCart.isTrue
                              ? cartController
                                  .removeProduct(Product.products[index])
                              : cartController
                                  .addProduct(Product.products[index]);
                        },
                        icon: Obx(() => cartController
                            .productAddRemove(Product.products[index])),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
