import 'package:flutter/material.dart';
import 'package:grocery_app/core/Cart/cart_item_card.dart';
import 'package:grocery_app/utils/utils.dart';

class cartItem {
  final String image;
  final String itemName;
  final String itemPrice;
  final String itemQuantity;
  cartItem({
    Key? key,
    required this.image,
    required this.itemName,
    required this.itemPrice,
    required this.itemQuantity,
  });
}
