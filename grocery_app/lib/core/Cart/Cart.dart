import 'package:flutter/material.dart';
import 'package:grocery_app/core/Cart/cart_item_card.dart';
import 'package:get/get.dart';

import 'package:grocery_app/core/Cart/services/cart_controller.dart';
import 'package:grocery_app/utils/utils.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        verticalspace(15),
        Text(
          'My Cart', // Replace with your actual text
          style: TextStyle(
            fontFamily: 'Gilroy-Bold',
            fontSize: 20,
            height: 18 / 20, // Calculating line height based on fontSize
            letterSpacing: 0,
          ),
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        cart_item_card(
                          image: 'assets/cart_items/item1.png',
                          itemName: 'Product 1',
                          itemPrice: '\$10.00',
                          itemQuantity: '2',
                        ),
                        verticalspace(2),
                        Divider(
                          color: Color(0xffE2E2E2),
                          thickness: 1,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 380,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            color: Color(0xff53B175),
          ),
          child: Center(
              child: Text(
            "Go to Checkout",
            style: TextStyle(color: Colors.white),
          )), // Replace with your desired color
        ),
      ],
    ));
  }
}
