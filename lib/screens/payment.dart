import 'package:flutter/material.dart';
import 'package:grocery_store/constants.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialButton(
        color: kDarkGreen,

        // style: OutlinedButton.styleFrom(
        //   // fixedSize: Size(40, 60),
        //   backgroundColor: kDarkGreen,
        // ),
        onPressed: () {},
        child: Text(
          'fcgf',
        ),
      ),
    );
  }
}
