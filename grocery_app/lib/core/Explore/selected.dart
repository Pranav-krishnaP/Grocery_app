import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/core/mainpage.dart';
import 'package:grocery_app/utils/utils.dart';

import 'models.dart';

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

Widget items(Items obj, var h, var w) {
  return Container(
    padding: EdgeInsets.all(w * 0.03),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black..withOpacity(0.5), width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: h * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(obj.imgurl!),
                  fit: BoxFit.contain)),
        ),
        verticalspace(h * 0.05),
        Text(
          obj.name!,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Gildon",
              fontSize: h * 0.08),
        ),
        verticalspace(h * 0.005),
        Text(
          obj.desc!,
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontFamily: "Gildon",
              fontSize: h * 0.05),
        ),
        verticalspace(h * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                obj.price!.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Gildon",
                    fontSize: h * 0.06),
              ),
            ),
            const Expanded(
              flex: 3,
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: Ink(
                child: InkWell(
                  splashFactory: InkRipple.splashFactory,
                  onHover: (value) {},
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
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

Widget filteritems(String name) {
  var change = false.obs;
  return SizedBox(
    child: Row(
      children: [
        Obx(() => Checkbox(
            value: change.value,
            onChanged: (bool? value) {
              change.value = value as bool;
            })),
        horizontalspace(23),
        const Text("Noodles")
      ],
    ),
  );
}
