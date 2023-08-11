import 'package:flutter/material.dart';
import 'package:grocery_app/utils/utils.dart';

class cart_item_card extends StatelessWidget {
  const cart_item_card({
    super.key,
    required this.image,
    required this.itemName,
    required this.itemPrice,
    required this.itemQuantity,
  });

  final String image;
  final String itemName;
  final String itemPrice;
  final String itemQuantity;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 70,
            height: 65,
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    itemName,
                    style: TextStyle(
                      fontFamily: 'Gilroy-Bold',
                      fontSize: 16,
                      height:
                          18 / 16, // Calculating line height based on fontSize
                      letterSpacing: 0.1,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(
                    Icons.close,
                    color: Color(0xff7C7C7C),
                    size: 20,
                  ),
                ],
              ),
              verticalspace(10),
              Text(
                itemPrice,
                style: TextStyle(
                  fontFamily: 'Gilroy-Medium',
                  fontSize: 14,
                  height: 18 / 16, // Calculating line height based on fontSize
                  letterSpacing: 0.1,
                ),
                textAlign: TextAlign.left,
              ),
              verticalspace(20),
              Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: Color(0xff7C7C7C),
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    itemQuantity,
                    style: TextStyle(
                      fontFamily: 'Gilroy-Medium',
                      fontSize: 14,
                      height: 18 / 16,
                      letterSpacing: 0.1,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.add,
                    color: Color(0xff53B175),
                    size: 20,
                  ),
                  SizedBox(
                    width: 175,
                  ),
                  Text(
                    itemPrice,
                    style: TextStyle(
                      fontFamily: 'Gilroy-Medium',
                      fontSize: 14,
                      height: 18 / 16,
                      letterSpacing: 0.1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          
        ],
      ),
    );
  }
}
