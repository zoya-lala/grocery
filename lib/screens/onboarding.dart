import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/components/toggle.dart';
import 'package:grocery_store/constants.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  final List<Map<String, String>> Onboarding = [
    {
      'image': 'images/on1.png',
      'title': 'Your favorite',
      'title2': 'grocery',
      'desc':
          'In our store you will find all kinds Ot fruits. vegetables. bread and meat online.'
    },
    {
      'image': 'images/on1.png',
      'title': 'Amazing',
      'title2': 'discount',
      'desc':
          'You will find all the groceries you want, fresh, with good quality and at o cheap price',
    },
    {
      'image': 'images/on1.png',
      'title': 'Fast',
      'title2': 'delivery',
      'desc': 'Delivery is done safely and quickly within a few minutes',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                setState(
                  () {
                    currentIndex = value;
                  },
                );
              },
              itemCount: Onboarding.length + 1,
              itemBuilder: (context, index) {
                if (index < Onboarding.length) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 320.0,
                        height: 320.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 4),
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: kLightestGreen,
                          border: Border.all(
                            width: 8.0,
                            color: kWhite,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Image.asset(
                            // height: 50.0,
                            // width: 50.0,
                            Onboarding[index]['image']!,
                            // fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Onboarding[index]['title']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            Onboarding[index]['title2']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color: kDarkGreen,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          Onboarding[index]['desc']!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kDarkGrey,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: DotsIndicator(
                                  onTap: (index) {
                                    pageController.animateToPage(index,
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.easeOut);
                                  },
                                  position: index,
                                  dotsCount: Onboarding.length + 1,
                                  decorator: DotsDecorator(
                                      activeColor: kDarkGreen,
                                      activeSize: Size(20, 10),
                                      activeShape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: CircleAvatar(
                              backgroundColor: kDarkGreen,
                              radius: 25.0,
                              child: IconButton(
                                onPressed: () {
                                  if (index < Onboarding.length) {
                                    pageController.nextPage(
                                      duration: Duration(
                                        milliseconds: 300,
                                      ),
                                      curve: Curves.easeIn,
                                    );
                                  }
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: kWhite,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else {
                  return Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          'images/kiwi.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        // left: 0,
                        // right: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0),
                            ),
                            color: Colors.white,
                          ),
                          height: 300.0,
                          // width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Grocery Shopping',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
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
                                Toggle(),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'OR',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                        // decoration: TextDecoration.underline,
                                        color: kDarkGreen,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'Shopping as Guest',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        decorationColor: kDarkGreen,
                                        color: kDarkGreen,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
