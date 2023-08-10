import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Account/accoutns.dart';
import 'Cart/Cart.dart';
import 'Explore/explore.dart';
import 'Favourites/favourites.dart';
import 'Homepage/homepage.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    var ind = 0.obs;
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    ind.value = 0;
                  },
                  icon: const Icon(Icons.home)),
              IconButton(
                  onPressed: () {
                    ind.value = 1;
                  },
                  icon: const Icon(Icons.explore)),
              IconButton(
                  onPressed: () {
                    ind.value = 2;
                  },
                  icon: const Icon(Icons.shopping_cart)),
              IconButton(
                  onPressed: () {
                    ind.value = 3;
                  },
                  icon: const Icon(Icons.favorite_outlined)),
              IconButton(
                  onPressed: () {
                    ind.value = 4;
                  },
                  icon: const Icon(Icons.person)),
            ],
          ),
        ),
        body: Obx(() => Column(
              children: [
                stackedbody(ind.value),
              ],
            )));
  }
}

Widget stackedbody(var index) {
  return Expanded(
    child: IndexedStack(
      index: index,
      children: const [Homepage(), Explore(), Cart(), Favourites(), Accounts()],
    ),
  );
}
