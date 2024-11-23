import 'package:flutter/material.dart';
import 'package:grocery_store/constants.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/on.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            // left: 0,
            // right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              // alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
                color: Colors.white,
              ),
              height: 230,
              // width: 200,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Grocery Shopping',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Find your fresh and tasty grocery with best sales. There\'re about 50 items.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkGrey,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 60.0,
                        vertical: 15.0,
                      ),
                      // height: 40.0,
                      onPressed: () {},
                      color: kLightRed,
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
