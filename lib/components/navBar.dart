import 'package:flutter/material.dart';
import 'package:grocery_store/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: kDarkGrey,
                  ),
                ),
                Text(
                  'Zoya Lala',
                  style: kHeading,
                ),
              ],
            ),
          ],
        ),
        Container(
          height: 30.0,
          width: 30.0,
          padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: kDarkGreen,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Icon(
            Icons.shopping_cart,
            color: kWhite,
            size: 20.0,
          ),
        ),
      ],
    );
  }
}
