import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/core/Explore/models.dart';
import 'package:grocery_app/core/Explore/selected.dart';
import 'package:grocery_app/utils/utils.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalspace(h * 0.03),
          SizedBox(
            height: h * 0.05,
            child: Text(
              "Find Products",
              style: TextStyle(
                  fontFamily: "Gilroy-Bold",
                  fontSize: w * 0.05,
                  fontWeight: FontWeight.w700),
            ),
          ),
          verticalspace(h * 0.01),
          SizedBox(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  fillColor: Color(0xffF2F3F2)),
            ),
          ),
          verticalspace(h * 0.03),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: GridView.count(
                childAspectRatio: 0.85,
                mainAxisSpacing: h * 0.02,
                crossAxisSpacing: w * 0.04,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(
                    categories.length,
                    (index) => catobj(categories[index].category!,
                        categories[index].imageurl!, h * 0.2, w * 0.4)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
