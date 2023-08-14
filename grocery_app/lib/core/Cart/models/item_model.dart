import 'package:flutter/material.dart';
import 'package:grocery_app/core/Cart/cart_item_card.dart';
import 'package:grocery_app/utils/utils.dart';

class cartItem {
  String? image;
  String? itemName;
  String? itemPrice;
  String? itemQuantity;
  cartItem({
    Key? key,
    this.image,
    this.itemName,
    this.itemPrice,
    this.itemQuantity,
  });
}
