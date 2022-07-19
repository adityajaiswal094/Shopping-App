import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/model/cart.dart';

class CartController extends GetxController {
  // Add a dictionary to store the products in the cart
  final _cartList = {}.obs;

// func to add product to cart
  void addProduct(Product product) {
    if (!_cartList.containsKey(product)) {
      _cartList[product] = 1;
      product.isAddedToCart = true.obs;
    }
  }

  // func to add product to cart
  void removeProduct(Product product) {
    if (_cartList.containsKey(product)) {
      _cartList.removeWhere((key, value) => key == product);
      product.isAddedToCart = false.obs;
    }
  }

  // get Products
  get cartList => _cartList;

  // get total Price
  get total => _cartList.entries
      .map((product) => product.key.price * 1)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);

  // icon change for item added or removed
  Icon productAddRemove(Product product) {
    return _cartList[product] == 1
        ? Icon(
            Icons.remove_circle_rounded,
            color: Colors.grey[600],
          )
        : const Icon(Icons.add_circle_outline_rounded);
  }
}
