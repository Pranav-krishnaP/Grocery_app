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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  Get.offAndToNamed('/home');
                },
                icon: const Icon(Icons.arrow_back_ios_new)),
            const Text("dfsfd"),
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) => filtersheet());
                },
                icon: const Icon(Icons.tune))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            children: List.generate(Get.arguments['Category'].length, (index) {
              return items(Get.arguments['Category'][index], h * 0.12, w * 0.4);
            }),
          ),
        ),
      ),
    );
  }
}

Widget items(Items obj, var h, var w) {
  return Container(
    padding: EdgeInsets.all(h * 0.03),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: w * 0.6,
            height: h * 0.9,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(obj.imgurl!), fit: BoxFit.fill)),
          ),
          verticalspace(h * 0.02),
          Text(
            obj.name!,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Gildon",
                fontSize: w * 0.12),
          ),
          verticalspace(h * 0.02),
          Text(
            obj.desc!,
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontFamily: "Gildon",
                fontSize: w * 0.08),
          ),
          verticalspace(h * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                obj.price!.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Gildon",
                    fontSize: w * 0.12),
              ),
              SizedBox(
                  child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ))
            ],
          )
        ],
      ),
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
  var value = false.obs;
  return SizedBox(
    child: Row(
      children: [
        Checkbox(
            value: value.value,
            onChanged: (bool? value) {
              value = value;
            }),
        horizontalspace(23),
        const Text("Noodles")
      ],
    ),
  );
}
