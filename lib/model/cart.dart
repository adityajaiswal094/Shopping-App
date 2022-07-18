import 'package:get/state_manager.dart';

class Product {
  final String name;
  final String imageUrl;
  final int price;
  late RxBool isAddedToCart;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.isAddedToCart,
  });

  static List<Product> products = [
    Product(
      name: "Shirt",
      imageUrl:
          "https://images.unsplash.com/photo-1626497764746-6dc36546b388?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      price: 599,
      isAddedToCart: false.obs,
    ),
    Product(
      name: "Shirt",
      imageUrl:
          "https://images.unsplash.com/photo-1596755094514-f87e34085b2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      price: 599,
      isAddedToCart: false.obs,
    ),
    Product(
      name: "Shirt",
      imageUrl:
          "https://images.unsplash.com/photo-1594938291221-94f18cbb5660?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHNoaXJ0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      price: 999,
      isAddedToCart: false.obs,
    ),
    Product(
      name: "T-Shirt",
      imageUrl:
          "https://images.unsplash.com/photo-1586363104862-3a5e2ab60d99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHNoaXJ0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      price: 499,
      isAddedToCart: false.obs,
    ),
    Product(
      name: "Denim",
      imageUrl:
          "https://images.unsplash.com/photo-1605518216938-7c31b7b14ad0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGVuaW0lMjBqZWFuc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      price: 1099,
      isAddedToCart: false.obs,
    ),
    Product(
      name: "Shoes",
      imageUrl:
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      price: 1449,
      isAddedToCart: false.obs,
    ),
    Product(
      name: "iPhone 13 Pro",
      imageUrl:
          "https://www.apple.com/newsroom/images/product/iphone/standard/Apple_iPhone-13-Pro_Colors_09142021_big.jpg.slideshow-xlarge.jpg",
      price: 69999,
      isAddedToCart: false.obs,
    ),
    Product(
      name: "Realme 6",
      imageUrl:
          "https://m.media-amazon.com/images/I/61QUpp1uf4L._AC_SL1024_.jpg",
      price: 11999,
      isAddedToCart: false.obs,
    ),
    Product(
      name: "MacBook Air M2",
      imageUrl:
          "https://9to5mac.com/wp-content/uploads/sites/6/2022/07/M2-2022-MacBook-Air.jpg?quality=82&strip=all",
      price: 249999,
      isAddedToCart: false.obs,
    ),
  ];
}
