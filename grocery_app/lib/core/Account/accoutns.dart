import 'package:flutter/material.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xff00c3c9),
                  child: ClipOval(
                    child: Image(
                      image: AssetImage("assets/profile/profile.png"),
                      fit: BoxFit
                          .cover, // Adjust the fit as needed (cover, contain, etc.)
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Afsar Hossen",
                          style: TextStyle(
                              fontFamily: 'Gilroy-Bold',
                              fontSize: 20.0,
                              height: 1.8, // Line height equivalent to 18px
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff181725)),
                        ),
                        SizedBox(width: 5.0),
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            size: 20,
                            color: Color(0xff53B175),
                          ),
                          // Edit icon from Material Icons
                          onPressed: () {
                            // Add your edit icon click logic here
                          },
                        ),
                      ],
                    ),
                    Text(
                      'Imshuvo97@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Regular',
                        fontSize: 16.0,
                        height: 1.8, // Line height equivalent to 18px
                        letterSpacing: 0.0,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30.0),
            Divider(
              height: 1,
              thickness: 1,
              color: Color(0xffE0E0E0),
            ),
            SizedBox(
              height: 30,
            ),
            accounts_card(),
            accounts_card(),
            accounts_card(),
            accounts_card(),
            accounts_card(),
          ],
        ),
      ),
    ));
  }
}

class accounts_card extends StatelessWidget {
  const accounts_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset("assets/profile/order.png"),
            SizedBox(width: 16.0), // Add spacing between the icon and text
            Expanded(
              child: Text(
                'Orders',
                style: TextStyle(
                  fontFamily: 'Gilroy-Regular',
                  fontSize: 16.0,
                  height: 1.8,
                  letterSpacing: 0.0,
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons
                  .arrow_forward_ios_rounded), // Forward icon from Material Icons
              onPressed: () {
                // Add your forward icon click logic here
              },
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: Color(0xffE0E0E0),
        ),
      ],
    );
  }
}
