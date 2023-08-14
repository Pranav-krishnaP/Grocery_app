import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/core/Homepage/homepage.dart';

import '../core/mainpage.dart';

class Details1 extends StatefulWidget {
  const Details1({super.key});

  @override
  State<Details1> createState() => _Details1State();
}

class _Details1State extends State<Details1> {
  late String valueChoose;
  List listItem = ['1', '2', '3', '4'];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: double.infinity,
                height: h * 0.4,
                //color: Colors.blue,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0)),
                    color: Color(0xFFF2F3F2)),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: h * 0.025, left: w * 0.05, right: w * 0.05),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(Mainpage());
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 24,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.ios_share,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: h * 0.025, left: w * 0.05),
                child: Row(
                  children: [
                    Text(
                      'Natural Red Apple',
                      style: GoogleFonts.roboto(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: w * 0.05),
                      child: Icon((Icons.local_drink_outlined)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: h * 0.003, left: w * 0.05),
                child: Text(
                  '1kg, Price',
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[400]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: w * 0.057,
                  top: h * 0.003,
                ),
                child: Row(
                  children: [
                    Text(
                      '-',
                      style:
                          TextStyle(fontSize: 35, color: Colors.grey.shade400),
                    ),
                    SizedBox(
                      width: w * 0.14,
                    ),
                    Text(
                      '+',
                      style:
                          TextStyle(fontSize: 30, color: Colors.green.shade400),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: w * 0.05),
                      child: Text(
                        '%4.99',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.05, top: h * 0.03),
                child: Container(
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200))),
              ),
              Padding(
                padding: EdgeInsets.only(top: h * 0.003, left: w * 0.05),
                child: Row(
                  children: [
                    Text(
                      'Product Detail',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: w * 0.05),
                      child: Icon(
                        (Icons.keyboard_arrow_down),
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: h * 0.006, left: w * 0.05),
                child: Text(
                  'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful\nand varied diet.',
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[500]),
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.only(left: w * 0.05, top: h * 0.03),
                child: Container(
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200))),
              ),

              InkWell(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: ((context) => ReviewPage())));
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: h * 0.02, left: w * 0.05),
                          child: Text(
                            'Nutritions',
                            style: GoogleFonts.roboto(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.006, right: w * 0.05),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: w * 0.05, top: h * 0.02),
                child: Container(
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200))),
              ),
              InkWell(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: ((context) => ChatPage())));
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: h * 0.015, left: w * 0.05),
                          child: Text(
                            'Reviews',
                            style: GoogleFonts.roboto(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.006, right: w * 0.05),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: h * 0.035, left: w * 0.05),
                child: Container(
                  width: w * 0.9,
                  height: h * 0.095,
                  decoration: BoxDecoration(
                      color: Color(0xFF53B175),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      'Add to Basket',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
