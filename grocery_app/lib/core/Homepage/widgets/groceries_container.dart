import 'package:flutter/material.dart';

class Groceries_Container extends StatelessWidget {
  const Groceries_Container({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h * 0.16,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: w * 0.05, top: h * 0.012),
                child: Column(
                  children: [
                    Container(
                      width: w * 0.65,
                      height: h * 0.13,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 243, 185, 123),
                          borderRadius: BorderRadius.circular(18)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.05, top: h * 0.012),
                child: Column(
                  children: [
                    Container(
                      width: w * 0.65,
                      height: h * 0.13,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 148, 230, 178),
                          borderRadius: BorderRadius.circular(18)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.05, top: h * 0.012),
                child: Column(
                  children: [
                    Container(
                      width: w * 0.65,
                      height: h * 0.13,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 148, 230, 178),
                          borderRadius: BorderRadius.circular(18)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
