import 'package:flutter/material.dart';

class ListView_HomePage extends StatelessWidget {
  const ListView_HomePage({
    super.key,
    required this.w,
    required this.h,
  });

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: w * 0.9,
          height: h * 0.25,
          color: Colors.grey,
        ),
        SizedBox(
          width: w * 0.1,
        ),
        Container(
          width: w * 0.9,
          height: h * 0.25,
          color: Colors.grey,
        ),
        SizedBox(
          width: w * 0.1,
        ),
        Container(
          width: w * 0.9,
          height: h * 0.25,
          color: Colors.grey,
        ),
      ],
    );
  }
}
