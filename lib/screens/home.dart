import 'package:flutter/material.dart';
import 'package:grocery_store/components/bottom_navBar.dart';
import 'package:grocery_store/components/category.dart';
import 'package:grocery_store/components/navBar.dart';
import 'package:grocery_store/components/popular_fruits.dart';
import 'package:grocery_store/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: NavBar(),
      ),
      // backgroundColor: kDarkGreen,
      bottomNavigationBar: BottomNav(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            SearchBar(
              leading: Icon(Icons.search),
              backgroundColor: MaterialStatePropertyAll(Colors.white),
              surfaceTintColor:
                  MaterialStatePropertyAll(kWhite.withOpacity(0.0)),
              hintText: 'Search',
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Categories',
              style: kHeading,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Categories(),
                Categories(),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Popular',
              style: kHeading,
            ),
            Fruits(),
          ],
        ),
      ),
    );
  }
}
