import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/core/Explore/models/models.dart';
import 'package:grocery_app/core/Explore/pages/selected.dart';
import 'package:grocery_app/utils/utils.dart';

import '../widgets/category.dart';

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
