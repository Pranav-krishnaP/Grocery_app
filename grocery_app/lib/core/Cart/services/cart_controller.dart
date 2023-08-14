import 'package:get/get.dart';
import 'package:grocery_app/core/Cart/models/item_model.dart';

class CartController extends GetxController {
  // Replace this list with your actual data source
  final List<cartItem> items = [
    cartItem(
      image: 'assets/cart_items/item1.png',
      itemName: 'Product 1',
      itemPrice: '\$10.00',
      itemQuantity: '2',
    ),
    cartItem(
      image: 'assets/cart_items/item1.png',
      itemName: 'Product 2',
      itemPrice: '\$15.00',
      itemQuantity: '1',
    ),
  ];

  // Add methods for adding, removing items from the cart, etc.

  var showCheckoutCard = false.obs;

  void toggleCheckoutCard() {
    print("toggleCheckoutCard");
    showCheckoutCard.value = !showCheckoutCard.value;
  }
}
