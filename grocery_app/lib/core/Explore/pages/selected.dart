import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/core/mainpage.dart';
import 'package:grocery_app/utils/utils.dart';

import '../models/models.dart';
import '../widgets/items.dart';

// ignore: must_be_immutable
class Selected extends StatelessWidget {
  const Selected({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var filterselect = 1.obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Obx(() => filterselect.value == 1
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.offAndToNamed('/home');
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                      )),
                  const Text(
                    "dfsfd",
                    style: TextStyle(color: Colors.black),
                  ),
                  IconButton(
                      onPressed: () {
                        filterselect.value = 0;
                      },
                      icon: const Icon(
                        Icons.tune,
                        color: Colors.black,
                      ))
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        filterselect.value = 1;
                      },
                      icon: const Icon(Icons.close)),
                  const Text("dfsfd"),
                ],
              )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.1),
        child: SizedBox(
          child: Obx(() => filterselect.value == 1
              ? SingleChildScrollView(
                  child: SizedBox(
                    child: GridView.count(
                      mainAxisSpacing: h * 0.12,
                      crossAxisSpacing: w * 0.05,
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 0.6,
                      children: List.generate(Get.arguments['Category'].length,
                          (index) {
                        return items(
                            Get.arguments['Category'][index], h * 0.34, w * 1);
                      }),
                    ),
                  ),
                )
              : filtersheet()),
        ),
      ),
    );
  }
}

Widget filtersheet() {
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Category"),
        filteritems("Noodles"),
        filteritems("Noodles"),
        filteritems("Noodles"),
        filteritems("Noodles"),
        const Text("Brand"),
        filteritems("Noodles"),
        filteritems("Noodles"),
        filteritems("Noodles"),
      ],
    ),
  );
}
