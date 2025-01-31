import 'package:flutter/material.dart';
import 'package:grocery_store/constants.dart';

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: kWhite,
        borderRadius: BorderRadius.circular(24.0), // Overall rounded corners
        border: Border.all(color: kDarkGreen, width: 2), // Overall border
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Sign Up Button
          GestureDetector(
            onTap: () {
              setState(() {
                isLogin = false; // Set Sign Up as active
              });
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: isLogin ? kWhite : kDarkGreen, // Toggle color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  bottomLeft: Radius.circular(24.0),
                ),
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: isLogin ? kDarkGreen : kWhite, // Toggle text color
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          // Log In Button
          GestureDetector(
            onTap: () {
              setState(() {
                isLogin = true; // Set Log In as active
              });
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: isLogin ? kDarkGreen : kWhite, // Toggle color
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24.0),
                  bottomRight: Radius.circular(24.0),
                ),
              ),
              child: Text(
                'Log In',
                style: TextStyle(
                  color: isLogin ? kWhite : kDarkGreen, // Toggle text color
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
