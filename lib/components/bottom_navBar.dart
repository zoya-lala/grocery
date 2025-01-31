import 'package:flutter/material.dart';
import 'package:grocery_store/constants.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            // spreadRadius: 1.0,
            blurRadius: 2.0,
            color: Colors.black38,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: kDarkGreen,
          // fixedColor: kDarkGrey,
          unselectedItemColor: kDarkGrey,
          selectedItemColor: kDarkGreen,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_rounded,
                // size: 10.0,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Fav',
              icon: Icon(Icons.favorite_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Loc',
              icon: Icon(Icons.location_on_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Pro',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
