import 'package:flutter/material.dart';
import 'package:grocery_store/constants.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3.0,
            spreadRadius: 1.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
        color: kWhite,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              'Fruit',
              style: TextStyle(
                // color: kWhite,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Image.asset(
              'images/cherries.png',
              width: 30.0,
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
