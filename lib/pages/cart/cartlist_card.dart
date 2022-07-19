import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/model/cart.dart';
import 'package:shopping_cart/pages/cart/controller/cart_controller.dart';

class CartListCard extends StatelessWidget {
  final controller = Get.find<CartController>();
  final Product product;
  final int index;
  CartListCard({
    Key? key,
    required this.product,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: PhysicalModel(
        color: Colors.white,
        shadowColor: Colors.black54,
        elevation: 5.0,
        borderRadius: BorderRadius.circular(13),
        child: SizedBox(
          height: 90.0,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: SizedBox(
                        height: 80.0,
                        width: 80.0,
                        child: CachedNetworkImage(
                          imageUrl: product.imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    // SizedBox for spacing
                    const SizedBox(
                      width: 10.0,
                    ),

                    // Column for Name and Price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox for spacing
                        const SizedBox(
                          height: 8.0,
                        ),

                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),

                        // SizedBox for spacing
                        const SizedBox(
                          height: 8.0,
                        ),

                        Text(
                          "₹${product.price}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Remove Button
                IconButton(
                  icon: Icon(
                    Icons.remove_circle_rounded,
                    color: Colors.grey[600],
                  ),
                  onPressed: () {
                    controller.removeProduct(product);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
