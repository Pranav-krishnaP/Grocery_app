import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Detailspage/details.dart';

class Sizedbox_Widget extends StatelessWidget {
  const Sizedbox_Widget({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h * 0.33,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: w * 0.05, top: h * 0.012),
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.to(Details1());
                        },
                        child: Container_Widget(w: w, h: h)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.05, top: h * 0.012),
                child: Column(
                  children: [
                    Container_Widget(w: w, h: h),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.05, top: h * 0.012),
                child: Column(
                  children: [
                    Container_Widget(w: w, h: h),
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

class Container_Widget extends StatelessWidget {
  const Container_Widget({
    super.key,
    required this.w,
    required this.h,
  });

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * 0.5,
      height: h * 0.295,
      // color: Colors.yellow,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: w * 0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              width: w * 0.35,
              height: h * 0.13,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/homepage/fruit.png')),
              ),
            ),
            SizedBox(
              height: h * 0.015,
            ),
            Text('Organic Banans',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF181725))),
            SizedBox(
              height: h * 0.005,
            ),
            Text('7 pcs,Priceg',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.grey[500])),
            Padding(
              padding: EdgeInsets.only(right: w * 0.03),
              child: Row(
                children: [
                  Text("#4.99",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Color(0xFF181725))),
                  Spacer(),
                  Container(
                    width: w * 0.135,
                    height: h * 0.06,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
