import 'package:flutter/material.dart';
import 'package:shop_cart/controller/cart_controller.dart';
import 'package:shop_cart/model/cart_model.dart';
import 'package:shop_cart/views/cart_screen.dart';
import 'package:shop_cart/views/widgets/cart_counter.dart';
import 'package:shop_cart/views/widgets/product_item.dart';
import 'package:get/get.dart';

class HomePage  extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
     leading: const Icon(
       Icons.menu,
       color: Colors.black,
     ),
        actions: [
          InkWell(
            onTap: ()=>Get.to(()=>CartScreen()),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Icon(Icons.shopping_cart,color: Colors.black)
                  ),
                  Positioned(
                    top: 0,
                      left: 0,
                    right: 0,
                    child: GetBuilder<AddToCart>(
                      init: AddToCart(),
                      builder: (value)=>CartCounter(count: value.product_list.length.toString()),
                    )


                  )
                ],
              ),
            ),
          ),

        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: const [
                Expanded(
                    child: Text('ShopCart',style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      fontFamily:'avenir'
                    ),)
                ),
              ],
            ),
          ),
          Expanded(child: GridView.builder(
            itemBuilder: (context, index) {
            return ProductItem(
              image: product[index]["image"],
              itemName: product[index]["name"],
            );
            },
            itemCount: product.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            )

          ),
          )
        ],
      ),
    );
  }
}
