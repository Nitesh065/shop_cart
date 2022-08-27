import 'package:flutter/material.dart';
import 'package:shop_cart/controller/cart_controller.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';


class ProductItem extends StatelessWidget {
  ProductItem(
      {Key? key,this.screenWidth,this.screenHeight,this.image, this.itemName})
      : super(key: key);
  double?screenHeight;
  double? screenWidth;
  final String? image, itemName;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      height: screenHeight! * 0.2,
      width: screenWidth! * 0.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.blue[200]!.withOpacity(0.3),
                offset: Offset(0, 0),
                blurRadius: 3,
                spreadRadius: 3)
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(

              image??"https://picsum.photos/250?image=9",fit: BoxFit.cover,height: 120,)
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(itemName ?? "Item"),
          ),
          GetBuilder<AddToCart>(
            init: AddToCart(),
            builder: (value) => InkWell(
              onTap: () {
                value.add(image!, itemName!);
              },
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    height: screenHeight!* 0.03,
                    width: screenWidth! * 0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue),
                    child: const Center(
                      child: Text(
                        "ADD",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}