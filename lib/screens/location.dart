import 'package:flutter/material.dart';
import 'package:grocery_store/components/bottom_navBar.dart';
import 'package:grocery_store/components/navBar.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: NavBar(),
      ),
      bottomNavigationBar: BottomNav(),
      // body: ,
    );
  }
}
