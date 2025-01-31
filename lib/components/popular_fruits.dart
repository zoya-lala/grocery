import 'package:flutter/material.dart';
import 'package:grocery_store/constants.dart';

class Fruits extends StatelessWidget {
  const Fruits({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      width: 180.0,
      child: Stack(
        children: [
          Card(
            surfaceTintColor: kWhite,
            color: kWhite,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/fb.png',
                    height: 50.0,
                    width: 50.0,
                    // scale: 20.0,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Strawberry',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '9.99 ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: kDarkGreen,
                        ),
                      ),
                      Text(
                        '/kg',
                        style: TextStyle(
                          color: kDarkGrey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            size: 15.0,
                            color: kDarkGrey,
                          ),
                          Text(
                            '40 min',
                            style: TextStyle(
                              color: kDarkGrey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            size: 15.0,
                            color: Colors.amber[600],
                            Icons.star_rate_rounded,
                          ),
                          Text(
                            '3.00',
                            style: TextStyle(
                              color: kDarkGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 15.0,
            top: 15.0,
            child: Icon(
              Icons.favorite_rounded,
              color: kLightRed,
            ),
          ),
        ],
      ),
    );
  }
}
