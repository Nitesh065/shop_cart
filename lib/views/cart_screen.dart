import 'package:flutter/material.dart';
import 'package:shop_cart/model/cart_model.dart';
import 'package:shop_cart/views/widgets/cart_item.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return GetBuilder<AddToCart>(
      init: AddToCart(),
      builder: (value) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(icon:const Icon(Icons.arrow_back_ios,color: Colors.black),onPressed: ()=>Get.back(),),
        ),
        body: SafeArea(
          child: Container(
            height: screenSize.height,
            width: double.infinity,
            child: value.product_list.isEmpty?Center(child: Text("Cart is Empty")):ListView.builder(
              itemCount: value.product_list.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.horizontal,
                  background: Container(
                    color: Colors.grey.shade500,
                  ),
                  onDismissed: (direction) {
                    value.remove(index);
                  },
                  child: CartItem(
                    screenSize: screenSize,
                    image: value.product_list[index].image,
                    itemName: value.product_list[index].name,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

