import 'package:grocery_app/core/Cart/models/item_model.dart';
import 'package:grocery_app/core/Explore/models/models.dart';
import 'package:get/get.dart';

void GetxDependency() {
  Get.lazyPut(() => Categories());
  Get.lazyPut(() => cartItem());
}
