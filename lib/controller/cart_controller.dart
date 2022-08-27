import 'package:get/get.dart';
import 'package:shop_cart/model/cart_model.dart';
class AddToCart extends GetxController {
  List<Products> product_list = [];

  add(String image, String name) {
    product_list.add(Products(image: image, name: name));
    update();
  }

  remove(int index) {
    product_list.removeAt(index);
    update();
  }
}