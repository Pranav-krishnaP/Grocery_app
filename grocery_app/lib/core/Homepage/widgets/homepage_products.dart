import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Row_Widget extends StatelessWidget {
  const Row_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Exclusive Offers',
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
    );
  }
}
