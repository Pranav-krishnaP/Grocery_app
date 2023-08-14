import 'package:flutter/material.dart';
import 'package:grocery_app/utils/utils.dart';

class checkout_card extends StatelessWidget {
  const checkout_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 400,
      decoration: BoxDecoration(
        color: Color(0xfff2f3f2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Row(
              children: [
                Text(
                  'Checkout ',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height:
                        29 / 24, // Calculating line height based on fontSize
                    letterSpacing: 0,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.close,
                  color: Color(0xFF181725),
                  size: 30,
                  
                )
              ],
            ),
          ),
          Divider(
            color: Color(0xffE2E2E2),
            thickness: 1,
          ),
          verticalspace(2),
          checkout_row_widget(
            text1: "Delivery",
            text2: "Select Method",
          ),
          checkout_row_widget(
            text1: "Payment",
            text2: "Select Method",
          ),
          checkout_row_widget(
            text1: "Promo Code",
            text2: "Pick Discount",
          ),
          checkout_row_widget(
            text1: "Total Cost",
            text2: "\$13.48",
          ),
          verticalspace(2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 21 / 14, // Calculating line height based on fontSize
                  letterSpacing: 0,
                  color: Color(0xFF7C7C7C), // Default text color
                ),
                children: [
                  TextSpan(text: 'By placing an order you agree to our '),
                  TextSpan(
                    text: 'Terms',
                    style: TextStyle(
                        color: Color(0xFF181725)), // Highlighted text color
                  ),
                  TextSpan(text: ' And '),
                  TextSpan(
                    text: 'Conditions',
                    style: TextStyle(
                        color: Color(0xFF181725)), // Highlighted text color
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // Add your content here
    );
  }
}

class checkout_row_widget extends StatelessWidget {
  final String? text1;
  final String text2;
  checkout_row_widget({
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Row(
            children: [
              Text(
                text1!,
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 22 / 18, // Calculating line height based on fontSize
                  letterSpacing: 0,

                  color: Color(
                      0xff7c7c7c), // Text color, can be adjusted as needed
                ),
              ),
              Spacer(),
              Text(
                text2,
                style: TextStyle(
                  color: Color(0xff181725),
                  fontFamily: 'Gilroy',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 20 / 16, // Calculating line height based on fontSize
                  letterSpacing: 0,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff181725),
                size: 20,
              ),
            ],
          ),
        ),
        Divider(
          color: Color(0xffE2E2E2),
          thickness: 1,
        )
      ],
    );
  }
}
