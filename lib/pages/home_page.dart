import 'package:flutter/material.dart';
import 'package:jewelapp/commponents/bottombar.dart';

import 'package:jewelapp/constants.dart';
import 'package:jewelapp/pages/cartpage.dart';
import 'package:jewelapp/pages/productpage.dart';
import 'package:jewelapp/pages/profilepage.dart';
import 'package:jewelapp/pages/searchpage.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void navigateBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    // product page
    ProductPage(),
    CartPage(),
    SearchPage(),
    ProfilePage()

    //cart page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: BottomBar(
        onTabChange: (index) => navigateBar(index),
      ),
      body: pages[selectedIndex],
    );
  }
}
