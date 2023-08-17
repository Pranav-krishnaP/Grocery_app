import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      child: Row(
                        children: [
                          Container(
                            width: w * 0.3,
                            height: h * 0.13,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/homepage/fruit.png')),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text('Pulses',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: const Color(0xFF181725))),
                        ],
                      ),
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
                      child: Row(
                        children: [
                          Container(
                            width: w * 0.3,
                            height: h * 0.13,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/homepage/fruit.png')),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text('Pulses',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: const Color(0xFF181725))),
                        ],
                      ),
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
                      child: Row(
                        children: [
                          Container(
                            width: w * 0.3,
                            height: h * 0.13,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/homepage/fruit.png')),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text('Pulses',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: const Color(0xFF181725))),
                        ],
                      ),
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
