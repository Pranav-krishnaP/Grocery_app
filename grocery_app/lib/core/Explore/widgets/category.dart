import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../models/models.dart';

Widget catobj(String category, String image, var h, var w) {
  Random rand = Random();
  List<int> color = [0xff53B175B2, 0xff53B175B2, 0xff53B175B2, 0xff53B175B2];
  int index;
  return GestureDetector(
    onTap: () {
      // Get.to(const Selected());
      var result = selectedshow(category);
      print(result);
      Get.toNamed('/selected', arguments: {'Category': result});
    },
    child: Container(
      decoration: BoxDecoration(
          color: Color(color[(index = rand.nextInt(color.length))])
              .withOpacity(0.25),
          border: Border.all(color: Color(color[index])),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalspace(h * 0.04),
            Container(
              height: h * 0.5,
              width: w * 0.4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Categories/food.png"),
                      fit: BoxFit.fill)),
            ),
            verticalspace(h * 0.09),
            SizedBox(
                height: h * 0.3,
                width: w * 0.6,
                child: Text(
                  category,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    ),
  );
}

List<Items> selectedshow(String category) {
  List<Items> result = [];
  for (var obj in itemsr) {
    print(category);
    if (obj.category == category) {
      result.add(obj);
    }
  }
  return result;
}
