import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/core/Homepage/widgets/groceries_container.dart';
import 'package:grocery_app/core/Homepage/widgets/homepage_listview.dart';
import 'package:grocery_app/core/Homepage/widgets/homepage_products.dart';
import 'package:grocery_app/core/Homepage/widgets/homepage_sizedbox.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 25,
                      color: Color(0xFF4C4F4D),
                    ),
                    Text('Dhaka, Banassre',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xFF4C4F4D))),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: w * 0.7,
                  height: h * 0.065,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search, size: 20),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Search Store'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: SizedBox(
                    height: h * 0.2,
                    child: ListView_HomePage(w: w, h: h),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: h * 0.015),
                  child: Row_Widget(),
                ),
                Sizedbox_Widget(h: h, w: w),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                  child: Row(
                    children: [
                      Text('Best Selling',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color(0xFF181725))),
                      Spacer(),
                      Text('See All',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF53B175)))
                    ],
                  ),
                ),
                Sizedbox_Widget(h: h, w: w),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                  child: Row(
                    children: [
                      Text('Groceries',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color(0xFF181725))),
                      Spacer(),
                      Text('See All',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF53B175)))
                    ],
                  ),
                ),
                Groceries_Container(h: h, w: w),
                Sizedbox_Widget(h: h, w: w),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
